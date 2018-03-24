# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

EGO_VENDOR=( "github.com/bettercap/gatt 6475b946a0bff32e906c25d861f2b1c6d2056baa"
	"github.com/bettercap/readline 9cec905dd29109b64e6752507fba73474c2efd46"
	"github.com/elazarl/goproxy a96fa3a318260eab29abaf32f7128c9eb07fb073"
	"github.com/dustin/go-humanize bb3d318650d48840a39aa21a027c6630e198e626"
	"github.com/inconshreveable/go-vhost 06d84117953b22058c096b49a429ebd4f3d3d97b"
	"github.com/malfunkt/iprange 3a31f5ed42d2d8a1fc46f1be91fd693bdef2dd52"
	"github.com/mdlayher/dhcp6 e26af0688e455a82b14ebdbecf43f87ead3c4624"
	"github.com/mgutz/logxi aebf8a7d67ab4625e0fd4a665766fef9a709161b"
	"github.com/mattn/go-colorable 7dc3415be66d7cc68bf0182f35c8d31f8d2ad8a7"
	"github.com/mgutz/ansi 9520e82c474b0a04dd04f8a40959027271bab992"
	"github.com/pkg/errors 30136e27e2ac8d167177e8a583aa4c3fea5be833"
	"github.com/robertkrimen/otto 3b44b4dcb6c00477273595c312908e2412d07da6"
	"github.com/adrianmo/go-nmea 22095aa1b48050243d3eb9a001ca80eb91a0c6fa"
	"github.com/tarm/serial eaafced92e9619f03c72527efeab21e326f3bc36"
	"github.com/google/go-github 8eefe6bfbb002707f4216cd75783898e1b663f99"
	"gopkg.in/sourcemap.v1 6e83acea0053641eff084973fee085f0c193c61a github.com/go-sourcemap/sourcemap"
	"golang.org/x/sys 7dca6fe1f43775aa6d1334576870ff63f978f539 github.com/golang/sys"
	"github.com/jpillora/go-tld a31ae10e978ab5f352c5dad2cfbd60546dcea75f"
	"github.com/google/go-querystring 53e6ce116135b80d037921a7fdd5138cf32d7a8a"
)

EGO_PN=github.com/bettercap/bettercap

inherit golang-build golang-vcs-snapshot

EGIT_COMMIT="v${PV}"
ARCHIVE_URI="https://${EGO_PN}/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz ${EGO_VENDOR_URI}"
SRC_URI="${ARCHIVE_URI} ${EGO_VENDOR_URI}"

DESCRIPTION="A complete, modular, portable and easily extensible MITM framework"
HOMEPAGE="https://github.com/bettercap/bettercap/"
LICENSE="GPL-3"
SLOT=0
IUSE=""
KEYWORDS="~amd64 ~arm ~arm64"

#FIXME: add stable versions: iprage go-colorable
DEPEND="dev-go/go-isatty
	dev-go/gopacket
	dev-go/mux
	dev-go/websocket
	"
RDEPEND="net-libs/libpcap"

src_install(){
	dosbin bettercap
}