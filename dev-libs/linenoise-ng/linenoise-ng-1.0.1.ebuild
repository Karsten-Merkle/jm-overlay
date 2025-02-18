# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-multilib eutils

DESCRIPTION="Small, portable GNU readline replacement"
HOMEPAGE="https://github.com/arangodb/linenoise-ng"
SRC_URI="https://github.com/arangodb/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD wcwidth.cpp ConvertUTF.cpp"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

DOCS="README.md"

src_prepare() {
	sed -i "s/DESTINATION lib/DESTINATION \$\{CMAKE_INSTALL_LIBDIR\}/" CMakeLists.txt || die
	eapply_user
	cmake-utils_src_prepare
}
