setlocal
echo %1
for /f "delims=" %%i in ('cd') do set cwd=%%i
pushd %1
set GITFORMAT=%%H
call git show -s --format=%%%GITFORMAT% > %cwd%\.adm_tempfile.txt
set /p TOOLOUTPUT= < %cwd%\.adm_tempfile.txt
del %cwd%\.adm_tempfile.txt
call git show -s --format=fuller > %cwd%\%TOOLOUTPUT%
popd
endlocal