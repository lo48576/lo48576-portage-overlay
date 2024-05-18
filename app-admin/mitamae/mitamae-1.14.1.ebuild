# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="fast, simple, and single-binary configuration management tool with a DSL"
HOMEPAGE="https://github.com/itamae-kitchen/mitamae"
SRC_URI="https://github.com/itamae-kitchen/mitamae/releases/download/v${PV}/mitamae-x86_64-linux.tar.gz -> mitamae-x86_64-linux-${PV}.tar.gz"

S="${WORKDIR}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror strip"

src_install() {
	newbin mitamae-x86_64-linux mitamae
}
