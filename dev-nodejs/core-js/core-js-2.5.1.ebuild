# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

NODE_MODULE_EXTRA_FILES="client core es5 es6 es7 fn library modules stage web shim.js"

inherit node-module

DESCRIPTION="Standard library"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

DOCS=( CHANGELOG.md README.md )
