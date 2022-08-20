# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit git-r3

DESCRIPTION="A fancier implementation of i3lock-fancy-rapid."

HOMEPAGE="https://github.com/jklotz77/i3lock-fancier-rapid"\

EGIT_REPO_URI="https://github.com/jklotz77/i3lock-fancier-rapid.git"
EGIT_SUBMODULES=("lodepng")

LICENSE="BSD"
SLOT="0"
KEYWORDS=""

DEPEND="x11-libs/libX11"
RDEPEND="
	|| (
	>=x11-misc/i3lock-2.12
	>=x11-misc/i3lock-color-2.12
	)
"

BDEPEND=""

src_install() {
	dobin i3lock-fancier-rapid
}
