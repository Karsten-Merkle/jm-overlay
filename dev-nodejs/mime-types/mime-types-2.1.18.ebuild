# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

NODEJS_MIN_VERSION="0.6"
NODE_MODULE_DEPEND="mime-db:1.33.0"

inherit node-module

DESCRIPTION="The ultimate javascript content-type utility"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

DOCS=( README.md HISTORY.md )
