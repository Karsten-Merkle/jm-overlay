# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

NODEJS_MIN_VERSION="4"
NODE_MODULE_EXTRA_FILES="browser.js"
NODE_MODULE_DEPEND="has-flag:2.0.0"

inherit node-module

DESCRIPTION="Detect whether a terminal supports color"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

DOCS=( readme.md )
