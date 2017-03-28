# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

DESCRIPTION="Virtual for MigMix fonts"
HOMEPAGE="http://mix-mplus-ipa.osdn.jp/migmix/"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+migmix-1p +migmix-2p +migmix-1m +migmix-2m"

RDEPEND="
	migmix-1p? ( media-fonts/migmix_1p )
	migmix-2p? ( media-fonts/migmix_2p )
	migmix-1m? ( media-fonts/migmix_1m )
	migmix-2m? ( media-fonts/migmix_2m )
"
