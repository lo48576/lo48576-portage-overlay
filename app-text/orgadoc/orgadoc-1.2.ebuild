# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="OrgaDoc is a program for generating and organizing documents"
HOMEPAGE="https://www.gnu.org/software/orgadoc/"
SRC_URI="http://ftpmirror.gnu.org/${PN}/${P}.tar.gz"
RESTRICT="mirror"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc"

DEPEND="
	>=sys-devel/autoconf-2.69"
RDEPEND="
	dev-libs/libxml2"

src_prepare() {
	default

	eautoreconf
}

src_install() {
	emake DESTDIR="${D}" -C src install
	emake DESTDIR="${D}" -C utils install

	dodoc AUTHORS ChangeLog NEWS README

	doman docs/orgadoc.1 docs/orgadoc-init-readme.1
}
