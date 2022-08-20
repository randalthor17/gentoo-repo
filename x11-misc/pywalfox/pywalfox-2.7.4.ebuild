# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=(python3_{9,10,11})

inherit distutils-r1 python-utils-r1

DESCRIPTION="Native app used alongside the Pywalfox browser extension."
HOMEPAGE="https://github.com/Frewacom/pywalfox"
SRC_URI="https://pypi.python.org/packages/source/p/${PN}/${P}.tar.gz -> ${P}.tar.gz"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}
	|| (
		x11-misc/pywal-16-colors
		x11-misc/pywal
	)
"
BDEPEND=""

distutils_enable_tests pytest
