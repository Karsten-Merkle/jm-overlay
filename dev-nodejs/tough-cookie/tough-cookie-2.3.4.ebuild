# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

NODE_MODULE_DEPEND="punycode:1.4.1"
NODEJS_MIN_VERSION="0.8"

inherit node-module

DESCRIPTION="RFC6265 Cookies and Cookie Jar for node.js"

LICENSE="BSD"
KEYWORDS="~amd64 ~x86"

DOCS=( README.md )
