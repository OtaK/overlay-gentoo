# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit pax-utils

DESCRIPTION="Wire for desktop"
HOMEPAGE="https://wire.com https://github.com/wireapp/wire-desktop"
SRC_URI="https://github.com/wireapp/wire-desktop/releases/download/linux%2F${PV}/Wire-${PV}_x86_64.AppImage"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RESTRICT="bindist mirror strip"

RDEPEND="dev-libs/nss
         x11-libs/libXtst"

QA_PREBUILT="opt/Wire/wire-desktop"

S="${WORKDIR}"

src_install() {
	exeinto /opt/Wire
	newexe "${DISTDIR}/Wire-${PV}_x86_64.AppImage" wire-desktop

	fperms +x "/opt/Wire/wire-desktop"

	dosym /opt/Wire/wire-desktop /usr/bin/wire-desktop
}
