# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

NODEJS_MIN_VERSION="0.10.0"
NODE_MODULE_DEPEND="repeating:2.0.1"

inherit node-module

DESCRIPTION="Detect the indentation of code"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

DOCS=( readme.md )
