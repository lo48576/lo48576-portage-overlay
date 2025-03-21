# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop udev xdg-utils

DESCRIPTION="Ultimate Hacking Keyboard configurator"
HOMEPAGE="https://github.com/UltimateHackingKeyboard/agent"
SRC_URI="https://github.com/UltimateHackingKeyboard/agent/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI+=" https://github.com/UltimateHackingKeyboard/agent/releases/download/v${PV}/UHK.Agent-${PV}-linux-x86_64.AppImage -> ${P}.AppImage"

S="${WORKDIR}/agent-${PV}"

LICENSE="UHK-Agent"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror strip"

RDEPEND="
	net-print/cups
	sys-fs/fuse:0"

QA_PRESTRIPPED="usr/bin/uhk-agent"

src_install() {
	newbin "${DISTDIR}"/${P}.AppImage uhk-agent
	udev_newrules rules/50-uhk60.rules 50-uhk60.rules
	domenu "${FILESDIR}"/uhk-agent.desktop
	newicon build/icons/1024x1024.png uhk-agent.png
	newicon -s 512 build/icons/512x512.png uhk-agent.png
	newicon -s 256 build/icons/256x256.png uhk-agent.png
	newicon -s 128 build/icons/128x128.png uhk-agent.png
	newicon -s 96 build/icons/96x96.png uhk-agent.png
	newicon -s 64 build/icons/64x64.png uhk-agent.png
	newicon -s 48 build/icons/48x48.png uhk-agent.png
	newicon -s 32 build/icons/32x32.png uhk-agent.png
	newicon -s 24 build/icons/24x24.png uhk-agent.png
	newicon -s 16 build/icons/16x16.png uhk-agent.png
}

pkg_postinst() {
	udev_reload
	xdg_icon_cache_update
}

pkg_postrm() {
	udev_reload
	xdg_icon_cache_update
}
