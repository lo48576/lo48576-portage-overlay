# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit font

DESCRIPTION="Fira Code: monospaced font with programming ligatures"
HOMEPAGE="https://www.flopdesign.com/freefont/smartfont.html"
SRC_URI="http://flop.sakura.ne.jp/font/fontdata/SmartFontUI.zip -> SmartFontUI-${PV}.zip"

LICENSE="IPAfont"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE=""
RESTRICT="binchecks mirror strip"

DEPEND="app-arch/unzip"
S="${WORKDIR}"

FONT_S="${S}/SmartFontUI"
FONT_SUFFIX="otf ttf"

src_prepare() {
	mv "${S}/SmartFontUI/03スマートフォントUI.otf" "${S}/SmartFontUI/SmartFontUI.otf"
	#mv "${S}/SmartFontUI/その他のファイル/03SmartFontUI.ttf" "${S}/SmartFontUI/SmartFontUI.ttf"
	mv "${S}/SmartFontUI/横書き専用プロポーショナルフォント(サポート外)/03SmartFont-P.ttf" "${S}/SmartFontUI/SmartFont-P.ttf"
	default_src_prepare
}
