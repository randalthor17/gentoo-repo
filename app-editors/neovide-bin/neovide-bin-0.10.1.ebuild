# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# shellcheck shell=sh # Written to be posix compatible
# shellcheck disable=SC2148,SC2034

EAPI="8"

inherit desktop xdg-utils

DESCRIPTION="No Nonsense Neovim Client in Rust"
HOMEPAGE="https://github.com/Kethku/neovide"
SRC_URI="https://github.com/Kethku/neovide/releases/download/$PV/neovide.tar.gz -> $P.tar.gz"
KEYWORDS="~amd64"

LICENSE="MIT"
SLOT="0"
IUSE=""

RESTRICT="test"

DEPEND="
	app-editors/neovim
	media-libs/mesa[vulkan]
	media-libs/fontconfig
	media-libs/freetype
	media-libs/libglvnd
	x11-misc/shared-mime-info
"
RDEPEND="
	$DEPEND
"

S="$PORTAGE_TMPDIR/portage/$CATEGORY/$PF"

src_unpack() {
	default
}

src_install() {
	dobin "$WORKDIR"/neovide

	domenu "$FILESDIR"/neovide.desktop
	doicon -s scalable "$FILESDIR"/neovide.svg
}

pkg_postinst() {
	xdg_desktop_database_update
	xdg_icon_cache_update
	xdg_mimeinfo_database_update
}

pkg_postrm() {
	xdg_desktop_database_update
	xdg_icon_cache_update
	xdg_mimeinfo_database_update
}
