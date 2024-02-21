@echo off

set "eslintIgnore=.eslintignore"
set "eslintRc=.eslintrc"
set "prettierRc=.prettierrc"
set "prettierIgnore=.prettierignore"
set "stylelintRc=.stylelintrc.json"

set "repo=https://raw.githubusercontent.com/Evan-acg/CommonConfig/vue/"

for %%i in (%eslintIgnore% %eslintRc% %prettierRc% %prettierIgnore% %stylelintRc%) do (
    echo Downloading %%i...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('%repo%%%i', '%%i')"
)

