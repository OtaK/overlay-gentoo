# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson git-r3

DESCRIPTION="Hyprland protocol files"
HOMEPAGE="https://github.com/hyprwm/hyprland-protocols"
EGIT_REPO_URI="https://github.com/hyprwm/${PN}.git"
EGIT_COMMIT="4d29e48433270a2af06b8bc711ca1fe5109746cd"
KEYWORDS="~amd64"

LICENSE="MIT"
SLOT="0"

RDEPEND=""
BDEPEND="
	virtual/pkgconfig
"

src_configure() {
	meson_src_configure
}
