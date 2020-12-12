@ECHO OFF
IF "%1"=="" GOTO Continue
gsWin64c -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=%1-compressed.pdf %1.pdf
:: für die 64 Bit version. Für 32 Bit den Befehl gsWin32c verwenden
GOTO EOF
:Continue

ECHO Dateiname angeben

:EOF
ECHO
ECHO Finished!
pause
