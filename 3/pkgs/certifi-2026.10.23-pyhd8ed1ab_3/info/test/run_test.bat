

@echo on

python -c "import os, certifi; assert os.path.isfile(certifi.where()), certifi.where()"
IF %ERRORLEVEL% NEQ 0 exit /B 1
python -c "import certifi; assert 'BEGIN CERTIFICATE' in certifi.contents()"
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
