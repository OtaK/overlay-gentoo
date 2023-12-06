# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit pax-utils

DESCRIPTION="The open-source, cross-platform API client for GraphQL, REST, WebSockets, SSE and gRPC. With Cloud, Local and Git storage."
HOMEPAGE="https://insomnia.rest https://github.com/Kong/insomnia"
# Format: https://github.com/Kong/insomnia/releases/download/core%408.4.5/Insomnia.Core-8.4.5.AppImage
SRC_URI="https://github.com/Kong/insomnia/releases/download/core%40${PV}/Insomnia.Core-${PV}.AppImage"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RESTRICT="bindist mirror strip"

RDEPEND="dev-libs/nss
         x11-libs/libXtst"

QA_PREBUILT="opt/Insomnia/insomnia"

S="${WORKDIR}"

src_install() {
	exeinto /opt/Insomnia
	newexe "${DISTDIR}/Insomnia.Core-${PV}.AppImage" insomnia

	fperms +x "/opt/Insomnia/insomnia"

	dosym /opt/Insomnia/insomnia /usr/bin/insomnia
}
