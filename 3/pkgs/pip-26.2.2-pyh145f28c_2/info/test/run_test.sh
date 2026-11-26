

set -ex



pip -h
python -c "import os; from pip._vendor import certifi; assert os.path.isfile(certifi.where()), certifi.where()"
python -m venv --system-site-packages --without-pip test-venv
test-venv/bin/python -c "import os, sys; from pip._vendor import certifi; assert sys.prefix != sys.base_prefix; assert os.path.isfile(certifi.where()), certifi.where()"
pip list
exit 0
