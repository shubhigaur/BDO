@echo %*

set outputFile=%~1
set inputFile=%~2

rem
rem Copyright (c) Microsoft Corporation.  All rights reserved.
rem

setlocal
set zworkdir=%~dp0
pushd %zworkdir%

gpg --batch --yes --recipient "Annette Augustus <anaugust@microsoft.com>" --output "%outputFile%" --passphrase "pass@1234" --encrypt "%inputFile%"

popd
endlocal

