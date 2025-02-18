# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

NODE_MODULE_EXTRA_FILES="nacl-fast.js nacl-fast.min.js nacl.js nacl.min.js"

inherit node-module

DEPEND="dev-util/uglifyjs"

DESCRIPTION="Port of TweetNaCl cryptographic library to JavaScript"

LICENSE="public-domain"
KEYWORDS="~amd64 ~x86"

DOCS=( README.md CHANGELOG.md AUTHORS.md )

src_compile() {
	uglifyjs -m -c -o nacl.min.js nacl.js || die
	uglifyjs -m -c -o nacl-fast.min.js nacl-fast.js || die
}
