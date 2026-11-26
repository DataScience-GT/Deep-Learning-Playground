

set -ex



python -V
python3 -V
pydoc -h
python3-config --help
python -c "from zoneinfo import ZoneInfo; from datetime import datetime; dt = datetime(2020, 10, 31, 12, tzinfo=ZoneInfo('America/Los_Angeles')); print(dt.tzname())"
python -m venv test-venv
test-venv/bin/python -c "import ctypes"
python -c "import sysconfig; print(sysconfig.get_config_var('CC'))"
_CONDA_PYTHON_SYSCONFIGDATA_NAME=_sysconfigdata_x86_64_conda_linux_gnu python -c "import sysconfig; print(sysconfig.get_config_var('CC'))"
for f in ${CONDA_PREFIX}/lib/python*/_sysconfig*.py; do echo "Checking $f:"; if [[ `rg @[^@]*@ $f` ]]; then echo "FAILED ON $f"; cat $f; exit 1; fi; done
test ! -f ${PREFIX}/lib/libpython${PKG_VERSION%.*}.a
test ! -f ${PREFIX}/lib/libpython${PKG_VERSION%.*}.nolto.a
pushd tests
pushd prefix-replacement
bash build-and-test.sh
popd
pushd cmake
cmake -GNinja  -DPython_FIND_ABI="OFF;ANY;ANY;OFF" -DCMAKE_POLICY_DEFAULT_CMP0094=NEW -DCMAKE_FIND_ROOT_PATH_MODE_PROGRAM=ONLY -DCMAKE_FIND_ROOT_PATH=${PREFIX} -DPY_VER=3.14.10 -DEXTRA_COMPONENTS="Development.Embed"  .
cmake -GNinja  -DPython_FIND_ABI="OFF;ANY;ANY;OFF" -DCMAKE_POLICY_DEFAULT_CMP0094=NEW -DCMAKE_FIND_ROOT_PATH_MODE_PROGRAM=ONLY -DCMAKE_FIND_ROOT_PATH=${PREFIX} -DPY_VER=3.14.10 -DEXTRA_COMPONENTS="Development.Module"  .
popd
popd
python run_test.py
python3.1 --version
python -c "from ctypes import CFUNCTYPE; CFUNCTYPE(None)(id)"
TERM=xterm >/dev/null python -c "import curses; scr = curses.initscr(); curses.unget_wch('x'); assert 'x' ==  scr.get_wch()"
exit 0
