# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit pax-utils

DESCRIPTION="WebCord - Up to date electron wrapper for Discord"
HOMEPAGE="https://discord.com https://github.com/SpacingBat3/WebCord"
# Example URI: https://github.com/SpacingBat3/WebCord/releases/download/v4.1.1/WebCord-4.1.1-x64.AppImage
SRC_URI="https://github.com/SpacingBat3/WebCord/releases/download/v${PV}/WebCord-${PV}-x64.AppImage"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RESTRICT="bindist mirror strip"

RDEPEND="gnome-base/gconf:2
         dev-libs/nss
         x11-libs/libXtst
         net-print/cups"

QA_PREBUILT="opt/WebCord/webcord"

S="${WORKDIR}"

src_install() {
	exeinto /opt/WebCord
	newexe "${DISTDIR}/WebCord-${PV}-x64.AppImage" webcord

	fperms +x "/opt/WebCord/webcord"

	dosym /opt/WebCord/webcord /usr/bin/webcord
}
