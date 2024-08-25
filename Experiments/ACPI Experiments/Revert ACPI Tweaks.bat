@echo off
echo Taking ownership of the backup files...
:: Taking ownership of the backup files
:: Made By Kizzimo
takeown /f %SystemRoot%\System32\drivers\AcpidevBACKUP.sys
takeown /f %SystemRoot%\System32\drivers\AcpipagrBACKUP.sys
takeown /f %SystemRoot%\System32\drivers\AcpitimeBACKUP.sys
takeown /f %SystemRoot%\System32\drivers\AcpipmiBACKUP.sys

echo Assigning full control permissions to the backup files...

:: Assigning full control permissions
icacls %SystemRoot%\System32\drivers\AcpidevBACKUP.sys /grant %username%:F
icacls %SystemRoot%\System32\drivers\AcpipagrBACKUP.sys /grant %username%:F
icacls %SystemRoot%\System32\drivers\AcpitimeBACKUP.sys /grant %username%:F
icacls %SystemRoot%\System32\drivers\AcpipmiBACKUP.sys /grant %username%:F

echo Renaming the backup files to their original names...

:: Renaming the backup files to their original names
ren %SystemRoot%\System32\drivers\AcpidevBACKUP.sys Acpidev.sys
ren %SystemRoot%\System32\drivers\AcpipagrBACKUP.sys Acpipagr.sys
ren %SystemRoot%\System32\drivers\AcpitimeBACKUP.sys Acpitime.sys
ren %SystemRoot%\System32\drivers\AcpipmiBACKUP.sys Acpipmi.sys

echo Operation completed.
pause