# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit font

MY_PV="${PV/_p/-}"
S_DIR_MIGMIX="mix-mplus-ipa/72510"
S_DIR_MIGU="mix-mplus-ipa/72511"

DESCRIPTION="Mixing mplus and IPA fonts"
HOMEPAGE="http://mix-mplus-ipa.osdn.jp/"
SRC_URI="mirror://sourceforge.jp/${S_DIR_MIGMIX}/migmix-1m-${MY_PV}.zip
	mirror://sourceforge.jp/${S_DIR_MIGMIX}/migmix-1p-${MY_PV}.zip
	mirror://sourceforge.jp/${S_DIR_MIGMIX}/migmix-2m-${MY_PV}.zip
	mirror://sourceforge.jp/${S_DIR_MIGMIX}/migmix-2p-${MY_PV}.zip
	mirror://sourceforge.jp/${S_DIR_MIGU}/migu-1p-${MY_PV}.zip
	mirror://sourceforge.jp/${S_DIR_MIGU}/migu-1c-${MY_PV}.zip
	mirror://sourceforge.jp/${S_DIR_MIGU}/migu-1m-${MY_PV}.zip
	mirror://sourceforge.jp/${S_DIR_MIGU}/migu-2m-${MY_PV}.zip"

LICENSE="IPAfont mplus-fonts"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="binchecks mirror strip"

DEPEND="app-arch/unzip"
S="${WORKDIR}"

FONT_S="${S}"
FONT_SUFFIX="ttf"
DOCS="migmix-README.txt migu-README.txt"

src_prepare() {
	# EAPI=6 default.
	if declare -p PATCHES | grep -q "^declare -a "; then
		[[ -n ${PATCHES[@]} ]] && eapply "${PATCHES[@]}"
	else
		[[ -n ${PATCHES} ]] && eapply ${PATCHES}
	fi
	eapply_user
	# EAPI=6 default end.

	mv */*.${FONT_SUFFIX} "${FONT_S}" || die
	mv *-1m-*/*-README.txt "${FONT_S}" || die
}
