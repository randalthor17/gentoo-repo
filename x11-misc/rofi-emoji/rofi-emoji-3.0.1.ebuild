# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit autotools

DESCRIPTION="An emoji selector plugin for Rofi that copies the selected emoji to the clipboard, among other things."
HOMEPAGE="https://github.com/Mange/rofi-emoji"
SRC_URI="https://github.com/Mange/rofi-emoji/archive/v${PV}/${P}.tar.gz -> ${P}.tar.gz"
RESTRICT="mirror"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="x11-misc/rofi"
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
	default
	eautoreconf
}
