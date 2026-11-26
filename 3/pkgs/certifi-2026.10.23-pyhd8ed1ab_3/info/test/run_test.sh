

set -ex



python -c "import os, certifi; assert os.path.isfile(certifi.where()), certifi.where()"
python -c "import certifi; assert 'BEGIN CERTIFICATE' in certifi.contents()"
exit 0
