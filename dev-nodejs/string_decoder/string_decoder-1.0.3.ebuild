# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

NODE_MODULE_DEPEND="safe-buffer:5.1.1"

inherit node-module

DESCRIPTION="The string_decoder module from Node core"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

DOCS=( README.md )
