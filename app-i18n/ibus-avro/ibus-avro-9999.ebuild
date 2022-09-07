# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 autotools

DESCRIPTION="Avro Phonetic Bangla typing for Linux"
HOMEPAGE="http://linux.omicronlab.com"
EGIT_REPO_URI="https://github.com/sarim/ibus-avro"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS=""

DEPEND="app-i18n/ibus
	dev-libs/gjs"
RDEPEND="${DEPEND}"
BDEPEND="sys-devel/autoconf"

src_prepare() {
	default
	eautoreconf
}

src_install() {
	make DESTDIR=${D} installdeb
	rmdir "${D}/usr/libexec"
	sed -i 's|<layout>bn</layout>|<layout>us</layout>|' "${D}/usr/share/ibus/component/ibus-avro.xml"
}
