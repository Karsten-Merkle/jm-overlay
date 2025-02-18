# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

NODEJS_MIN_VERSION="0.6"
NODE_MODULE_EXTRA_FILES="db.json"

inherit node-module

DESCRIPTION="Media Type Database"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

DOCS=( README.md HISTORY.md )
