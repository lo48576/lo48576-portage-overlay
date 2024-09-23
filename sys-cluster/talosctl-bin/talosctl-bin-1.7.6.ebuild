# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

MY_PN="talosctl"
MY_PV="${MY_PN}-linux-amd64-${PV}"

DESCRIPTION="Talos Linux is a modern Linux distribution built for Kubernetes"
HOMEPAGE="https://www.talos.dev/"
SRC_URI="https://github.com/siderolabs/talos/releases/download/v${PV}/${MY_PN}-linux-amd64 -> ${MY_PV}.bin"

S="${WORKDIR}"
LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror"

QA_PRESTRIPPED="usr/bin/talosctl"

src_install() {
	newbin "${DISTDIR}/${MY_PV}.bin" ${MY_PN}
}
