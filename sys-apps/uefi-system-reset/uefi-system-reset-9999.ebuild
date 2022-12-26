# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 mount-boot toolchain-funcs

EGIT_REPO_URI="https://gitlab.com/nop_thread/uefi-system-reset.git"
EGIT_BRANCH=master
if [ ${PV} != 9999 ] ; then
	# Expect "0_pre19991231" format.
	EGIT_COMMIT_DATE="$(ver_cut 2 ${PV})"
	# For specific commit hash, you can use the lines below instead of git-r3.
	#ARCHIVE_VERSION="COMMIT_HASH"
	#SRC_URI="https://gitlab.com/nop_thread/uefi-system-reset/-/archive/${ARCHIVE_VERSION}/uefi-system-reset-${ARCHIVE_VERSION}.tar.bz2 -> ${P}.tar.bz2"
	#S="${WORKDIR}/${PN}-${ARCHIVE_VERSION}"

	KEYWORDS="~amd64"
fi

DESCRIPTION="System reset for UEFI"
HOMEPAGE="https://gitlab.com/nop_thread/uefi-system-reset"

LICENSE="CC0-1.0"
SLOT="0"
IUSE="boot efi32 efi64"

BEPEND="
	efi32? ( sys-boot/gnu-efi[abi_x86_32] )
	efi64? ( sys-boot/gnu-efi[abi_x86_64] )
"

DOCS=( README.md )

src_prepare() {
	sed -i -e '/^OBJCOPY\s*=/d' Makefile || die

	if use efi32 ; then
		cp Makefile Makefile_efi32 || die
		sed -i -e 's/^\(\s*ARCH\s*:=\).*$/\1 ia32/' Makefile_efi32 || die
	fi
	if use efi64 ; then
		cp Makefile Makefile_efi64 || die
		sed -i \
			-e 's/^\(\s*ARCH\s*:=\).*$/\1 x86_64/' \
			-e 's:^\(EFI_LIB\s*=\).*$:\1 /usr/'$(get_libdir): \
			Makefile_efi64 || die
	fi

	default
}

src_compile() {
	tc-export OBJCOPY
	if use efi32 ; then
		emake -f Makefile_efi32 ARCH=ia32 || die
		for f in *.efi ; do
			mv -v $f ${f}32 || die
		done
	fi
	if use efi64 ; then
		emake -f Makefile_efi64 ARCH=x86_64 || die
		for f in *.efi ; do
			mv -v $f ${f}64 || die
		done
	fi
}

install_efi_files() {
	if use efi32 ; then
		doins cold-reset.efi32
		doins shutdown.efi32
		doins warm-reset.efi32
	fi
	if use efi64 ; then
		doins cold-reset.efi64
		doins shutdown.efi64
		doins warm-reset.efi64
	fi
}

src_install() {
	einstalldocs

	if use boot ; then
		insinto /boot/system-reset/
		install_efi_files
	fi

	insinto /usr/share/${PN}
	install_efi_files
	doins -r contrib/systemd-boot
}
