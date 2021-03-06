TERMUX_PKG_HOMEPAGE=https://weechat.org/
TERMUX_PKG_DESCRIPTION="Fast, light and extensible IRC chat client"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_VERSION=2.4
TERMUX_PKG_REVISION=3
TERMUX_PKG_SHA256=61a6afe9849b96e99c1f3cde612d1748a03c807059dad459e3a6acbc5cf100fd
TERMUX_PKG_SRCURL=https://www.weechat.org/files/src/weechat-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_DEPENDS="libiconv, ncurses, libgcrypt, libcurl, libgnutls, libandroid-support, zlib"
TERMUX_PKG_RM_AFTER_INSTALL="bin/weechat-curses share/man/man1/weechat-headless.1 share/icons"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCA_FILE=$TERMUX_PREFIX/etc/tls/cert.pem
-DENABLE_HEADLESS=OFF
-DENABLE_LUA=ON
-DENABLE_MAN=ON
-DENABLE_PERL=ON
-DENABLE_PYTHON3=ON
-DENABLE_TCL=OFF
-DMSGFMT_EXECUTABLE=$(which msgfmt)
-DMSGMERGE_EXECUTABLE=$(which msgmerge)
-DPKG_CONFIG_EXECUTABLE=$(which pkg-config)
-DXGETTEXT_EXECUTABLE=$(which xgettext)
"
