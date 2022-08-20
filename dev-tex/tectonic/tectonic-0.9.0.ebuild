# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.2

EAPI=8

CRATES="
	addr2line-0.17.0
	adler-1.0.2
	aho-corasick-0.7.18
	ansi_term-0.12.1
	anyhow-1.0.57
	app_dirs2-2.4.0
	atty-0.2.14
	autocfg-1.1.0
	backtrace-0.3.65
	base64-0.10.1
	base64-0.13.0
	bitflags-1.3.2
	block-buffer-0.7.3
	block-buffer-0.9.0
	block-padding-0.1.5
	bstr-0.2.17
	bumpalo-3.9.1
	byte-tools-0.3.1
	byte-unit-4.0.14
	byteorder-1.4.3
	bytes-0.4.12
	bytes-1.1.0
	cc-1.0.73
	cesu8-1.1.0
	cfg-if-0.1.10
	cfg-if-1.0.0
	chrono-0.4.19
	chrono-tz-0.6.1
	chrono-tz-build-0.0.2
	clap-2.34.0
	clearscreen-1.0.9
	cloudabi-0.0.3
	combine-4.6.4
	command-group-1.0.8
	core-foundation-0.9.3
	core-foundation-sys-0.8.3
	cpufeatures-0.2.2
	crc32fast-1.3.2
	crossbeam-deque-0.7.4
	crossbeam-epoch-0.8.2
	crossbeam-queue-0.2.3
	crossbeam-utils-0.7.2
	crossbeam-utils-0.8.8
	curl-0.4.43
	curl-sys-0.4.53+curl-7.82.0
	darling-0.12.4
	darling_core-0.12.4
	darling_macro-0.12.4
	derive_builder-0.10.2
	derive_builder_core-0.10.2
	derive_builder_macro-0.10.2
	deunicode-0.4.3
	digest-0.8.1
	digest-0.9.0
	dirs-2.0.2
	dirs-4.0.0
	dirs-sys-0.3.7
	either-1.6.1
	encoding_rs-0.8.31
	error-chain-0.12.4
	fake-simd-0.1.2
	fastrand-1.7.0
	filetime-0.2.16
	flate2-1.0.23
	fnv-1.0.7
	foreign-types-0.3.2
	foreign-types-shared-0.1.1
	form_urlencoded-1.0.1
	fs2-0.4.3
	fsevent-0.4.0
	fsevent-sys-2.0.1
	fuchsia-zircon-0.3.3
	fuchsia-zircon-sys-0.3.3
	futures-0.1.31
	futures-channel-0.3.21
	futures-core-0.3.21
	futures-cpupool-0.1.8
	futures-io-0.3.21
	futures-sink-0.3.21
	futures-task-0.3.21
	futures-util-0.3.21
	generic-array-0.12.4
	generic-array-0.14.5
	getrandom-0.1.16
	getrandom-0.2.6
	gimli-0.26.1
	glob-0.3.0
	globset-0.4.6
	globwalk-0.8.1
	h2-0.1.26
	h2-0.3.13
	hashbrown-0.11.2
	headers-0.2.3
	headers-core-0.1.1
	heck-0.3.3
	hermit-abi-0.1.19
	http-0.1.21
	http-0.2.6
	http-body-0.1.0
	http-body-0.4.4
	httparse-1.7.0
	httpdate-1.0.2
	humansize-1.1.1
	hyper-0.12.36
	hyper-0.14.18
	hyper-tls-0.5.0
	ident_case-1.0.1
	idna-0.2.3
	ignore-0.4.17
	indexmap-1.8.1
	inotify-0.7.1
	inotify-sys-0.1.5
	instant-0.1.12
	iovec-0.1.4
	ipnet-2.5.0
	itoa-0.4.8
	itoa-1.0.1
	jni-0.19.0
	jni-sys-0.3.0
	js-sys-0.3.57
	kernel32-sys-0.2.2
	lazy_static-1.4.0
	lazycell-1.3.0
	libc-0.2.124
	libz-sys-1.1.5
	lock_api-0.3.4
	log-0.4.16
	maplit-1.0.2
	matches-0.1.9
	maybe-uninit-2.0.0
	md-5-0.9.1
	memchr-2.4.1
	memoffset-0.5.6
	memoffset-0.6.5
	mime-0.3.16
	minimal-lexical-0.2.1
	miniz_oxide-0.5.1
	mio-0.6.23
	mio-0.8.2
	mio-extras-2.0.6
	mio-uds-0.6.8
	miow-0.2.2
	miow-0.3.7
	native-tls-0.2.10
	ndk-context-0.1.1
	net2-0.2.37
	nix-0.22.3
	nom-5.1.2
	nom-7.1.1
	notify-4.0.17
	ntapi-0.3.7
	num-integer-0.1.44
	num-traits-0.2.14
	num_cpus-1.13.1
	object-0.28.3
	once_cell-1.10.0
	opaque-debug-0.2.3
	opaque-debug-0.3.0
	open-1.7.1
	openssl-0.10.38
	openssl-probe-0.1.5
	openssl-src-111.18.0+1.1.1n
	openssl-sys-0.9.72
	parking_lot-0.9.0
	parking_lot_core-0.6.2
	parse-zoneinfo-0.3.0
	pathdiff-0.2.1
	percent-encoding-2.1.0
	pest-2.1.3
	pest_derive-2.1.0
	pest_generator-2.1.3
	pest_meta-2.1.3
	phf-0.8.0
	phf-0.10.1
	phf_codegen-0.8.0
	phf_codegen-0.10.0
	phf_generator-0.8.0
	phf_generator-0.10.0
	phf_shared-0.8.0
	phf_shared-0.10.0
	pin-project-lite-0.2.9
	pin-utils-0.1.0
	pinot-0.1.5
	pkg-config-0.3.25
	ppv-lite86-0.2.16
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro2-1.0.37
	quick-xml-0.22.0
	quote-1.0.18
	rand-0.7.3
	rand-0.8.5
	rand_chacha-0.2.2
	rand_chacha-0.3.1
	rand_core-0.5.1
	rand_core-0.6.3
	rand_hc-0.2.0
	rand_pcg-0.2.1
	redox_syscall-0.1.57
	redox_syscall-0.2.13
	redox_users-0.4.3
	regex-1.5.5
	regex-syntax-0.6.25
	remove_dir_all-0.5.3
	reqwest-0.11.10
	rustc-demangle-0.1.21
	rustc_version-0.2.3
	ryu-1.0.9
	same-file-1.0.6
	schannel-0.1.19
	scopeguard-1.1.0
	security-framework-2.6.1
	security-framework-sys-2.6.1
	semver-0.9.0
	semver-parser-0.7.0
	serde-1.0.136
	serde_derive-1.0.136
	serde_json-1.0.79
	serde_urlencoded-0.7.1
	sha-1-0.8.2
	sha2-0.9.9
	siphasher-0.3.10
	slab-0.4.6
	slug-0.1.4
	smallvec-0.6.14
	socket2-0.4.4
	string-0.2.1
	strsim-0.8.0
	strsim-0.10.0
	structopt-0.3.26
	structopt-derive-0.4.18
	syn-1.0.91
	tempfile-3.3.0
	tera-1.15.0
	termcolor-1.1.3
	terminfo-0.7.3
	textwrap-0.11.0
	thiserror-1.0.30
	thiserror-impl-1.0.30
	thread_local-1.1.4
	time-0.1.43
	tinyvec-1.6.0
	tinyvec_macros-0.1.0
	tokio-0.1.22
	tokio-1.17.0
	tokio-buf-0.1.1
	tokio-codec-0.1.2
	tokio-current-thread-0.1.7
	tokio-executor-0.1.10
	tokio-fs-0.1.7
	tokio-io-0.1.13
	tokio-native-tls-0.3.0
	tokio-reactor-0.1.12
	tokio-sync-0.1.8
	tokio-tcp-0.1.4
	tokio-threadpool-0.1.18
	tokio-timer-0.2.13
	tokio-udp-0.1.6
	tokio-uds-0.2.7
	tokio-util-0.7.1
	toml-0.5.9
	tower-service-0.3.1
	tracing-0.1.34
	tracing-attributes-0.1.20
	tracing-core-0.1.26
	try-lock-0.2.3
	typenum-1.15.0
	ucd-trie-0.1.3
	uncased-0.9.6
	unic-char-property-0.9.0
	unic-char-range-0.9.0
	unic-common-0.9.0
	unic-segment-0.9.0
	unic-ucd-segment-0.9.0
	unic-ucd-version-0.9.0
	unicode-bidi-0.3.8
	unicode-normalization-0.1.19
	unicode-segmentation-1.9.0
	unicode-width-0.1.9
	unicode-xid-0.2.2
	url-2.2.2
	utf8-width-0.1.6
	vcpkg-0.2.15
	vec_map-0.8.2
	version_check-0.9.4
	walkdir-2.3.2
	want-0.2.0
	want-0.3.0
	wasi-0.9.0+wasi-snapshot-preview1
	wasi-0.10.2+wasi-snapshot-preview1
	wasi-0.11.0+wasi-snapshot-preview1
	wasm-bindgen-0.2.80
	wasm-bindgen-backend-0.2.80
	wasm-bindgen-futures-0.4.30
	wasm-bindgen-macro-0.2.80
	wasm-bindgen-macro-support-0.2.80
	wasm-bindgen-shared-0.2.80
	watchexec-1.17.1
	web-sys-0.3.57
	which-4.2.5
	winapi-0.2.8
	winapi-0.3.9
	winapi-build-0.1.1
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	winreg-0.10.1
	ws2_32-sys-0.2.1
	xdg-2.4.1
	zip-0.5.13
"

inherit cargo flag-o-matic

DESCRIPTION="A modernized, complete, embeddable TeX/LaTeX engine. Tectonic is forked from the XeTeX
extension to the classic “Web2C” implementation of TeX and uses the TeXLive distribution
of support files."
HOMEPAGE="https://github.com/tectonic-typesetting/tectonic/"
SRC_URI="https://github.com/tectonic-typesetting/${PN}/archive/refs/tags/${PN}@${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris)
"

S="${WORKDIR}/${PN}-${PN}-${PV}"
RESTRICT="mirror"

# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="(Apache-2.0 0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD BSD-2 Boost-1.0 CC0-1.0 ISC MIT MIT) Unlicense WTFPL-2 ZLIB"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc"

DEPEND="
	dev-libs/icu
	dev-libs/openssl
	media-gfx/graphite2
	media-libs/fontconfig
	media-libs/freetype:2
	media-libs/harfbuzz[graphite,icu]
	media-libs/libpng
	sys-libs/zlib
"
RDEPEND="${DEPEND}"
BDEPEND="doc? ( app-text/mdbook )"


src_configure() {
	# Test fails with -ftree-slp-vectorize, therefore disable
	append-flags -fno-tree-slp-vectorize
	# Linker fails with lto enabled
	filter-flags -flto*

	local myfeatures=(
		external-harfbuzz
	)

	cargo_src_configure
}

src_compile() {
	cargo_src_compile
	if use doc; then
	   pushd docs || die
		mdbook build || die
		HTML_DOCS="${S}/docs/book"
	   popd || die
	fi
}

src_install() {
	cargo_src_install
	einstalldocs
}