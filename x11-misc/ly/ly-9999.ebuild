# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="Ly - a TUI display manager"
HOMEPAGE="https://github.com/fairyglade/ly"
EGIT_REPO_URI="https://github.com/fairyglade/${PN}.git"

LICENSE="WTFPL-2"
SLOT="0"
KEYWORDS=""

DEPEND="sys-libs/pam
	x11-libs/libxcb
	x11-base/xorg-server
	x11-apps/xauth"
RDEPEND="${DEPEND}"
BDEPEND=""

# src_unpack() {
# 	git-r3_src_unpack
# }

src_install() {
	dobin ${WORKDIR}/${P}/bin/ly

	dodir /etc/ly
	insinto /etc/ly
	doins ${WORKDIR}/${P}/res/config.ini
	exeinto /etc/ly
	doexe ${WORKDIR}/${P}/res/xsetup.sh
	doexe ${WORKDIR}/${P}/res/wsetup.sh

	insinto /etc/ly
	doins -r ${WORKDIR}/${P}/res/lang

	insinto /etc/pam.d
	insopts -m644
	doins ${WORKDIR}/${P}/res/pam.d/ly

	newinitd ${WORKDIR}/${P}/res/ly-openrc ly

}
