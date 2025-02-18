# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

NODEJS_MIN_VERSION="0.4.7"
NODE_MODULE_EXTRA_FILES="dist runtime.js"
NODE_MODULE_DEPEND="async:1.5.2
	optimist:0.6.1
	source-map:0.4.4
	uglify-js:2.8.29"

inherit node-module

DESCRIPTION="Provides the power necessary to let you build semantic templates effectively"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"
IUSE="doc"

DOCS=( README.markdown CONTRIBUTING.md FAQ.md release-notes.md )

src_install() {
	node-module_src_install
	use doc && dodoc docs/*
}
