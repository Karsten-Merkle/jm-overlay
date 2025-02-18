# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

NODE_MODULE_HAS_TEST="1"
NODE_MODULE_DEPEND="deep-equal:1.0.1
	defined:1.0.0
	for-each:0.3.2
	function-bind:1.1.1
	glob:7.1.2
	has:1.0.1
	inherits:2.0.3
	minimist:1.2.0
	object-inspect:1.3.0
	resolve:1.4.0
	resumer:0.0.0
	through:2.3.8"
NODE_MODULE_TEST_DEPEND="tap-parser:3.0.5
	concat-stream:1.6.0
	falafel:2.1.0
	js-yaml:3.9.1"

inherit node-module

DESCRIPTION="Tap-producing test harness for node and browsers"

LICENSE="MIT"
KEYWORDS="~amd64 ~x86"
IUSE="examples test"

RDEPEND="${RDEPEND}
	dev-nodejs/string-prototype-trim:1.1.2"
DOCS=( readme.markdown )
DEPEND="${DEPEND}
	test? (
		dev-nodejs/string-prototype-trim:1.1.2
		dev-util/tap:0
	)"

src_install() {
	node-module_src_install
	install_node_module_depend "string.prototype.trim:1.1.2"
	use examples && dodoc -r example
}

node_module_run_test() {
	install_node_module_build_depend "string.prototype.trim:1.1.2"
	install_node_module_build_depend "tap:0"
	tap test/*.js || die "Tests failed"
}
