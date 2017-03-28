# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

DESCRIPTION="Virtual for Migu fonts"
HOMEPAGE="http://mix-mplus-ipa.osdn.jp/migu/"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+migu-1p +migu-1c +migu-1m +migu-2m"

RDEPEND="
	migu-1p? ( media-fonts/migu_1p )
	migu-1c? ( media-fonts/migu_1c )
	migu-1m? ( media-fonts/migu_1m )
	migu-2m? ( media-fonts/migu_2m )
"
