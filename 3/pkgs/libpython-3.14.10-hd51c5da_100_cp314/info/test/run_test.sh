

set -ex



VER=${PKG_VERSION%.*}
VERABI=${VER}
VERABI_NO_DBG=${VERABI}
test -f ${PREFIX}/lib/libpython${VERABI}${SHLIB_EXT}
test -f ${PREFIX}/lib/libpython3${SHLIB_EXT}
exit 0
