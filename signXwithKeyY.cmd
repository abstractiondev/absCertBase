setlocal
set TARGET=%1
copy %TARGET% %TARGET%_work
gpg --finger 0x%2 >> %TARGET%_work
gpg --finger 0x%2 | findstr "fingerprint" > .admfingerprint
set /p FINGER= < .admfingerprint
del .admfingerprint
set FINGER=%FINGER: =%
set FINGER=%FINGER:Keyfingerprint=%
set FINGER=%FINGER:~1,40%
del commit_signer\%1_%FINGER%.asc
gpg --clearsign --output commit_signer\%1_%FINGER%.asc -u %2 %TARGET%_work
copy commit_signer\%1_%FINGER%.asc signer_commit\%FINGER%_%1.asc
del %TARGET%_work
del %TARGET%
endlocal