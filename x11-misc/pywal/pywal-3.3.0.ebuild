# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=(python3_{9,10,11})
DISTUTILS_USE_PEP517=setuptools

RESTRICT="mirror"

inherit distutils-r1

DESCRIPTION="Generate and change color-schemes on the fly."
HOMEPAGE="https://github.com/dylanaraps/pywal"
SRC_URI="https://github.com/dylanaraps/pywal/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}
	media-gfx/imagemagick
"
BDEPEND=""

distutils_enable_tests pytest
