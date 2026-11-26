

@echo on

pip -h
IF %ERRORLEVEL% NEQ 0 exit /B 1
python -c "import os; from pip._vendor import certifi; assert os.path.isfile(certifi.where()), certifi.where()"
IF %ERRORLEVEL% NEQ 0 exit /B 1
python -m venv --system-site-packages --without-pip test-venv
IF %ERRORLEVEL% NEQ 0 exit /B 1
test-venv/bin/python -c "import os, sys; from pip._vendor import certifi; assert sys.prefix != sys.base_prefix; assert os.path.isfile(certifi.where()), certifi.where()"
IF %ERRORLEVEL% NEQ 0 exit /B 1
pip list
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
