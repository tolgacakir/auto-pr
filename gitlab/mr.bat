@echo off
setlocal enabledelayedexpansion

set "source_branch="
set "target_branch="

:parse
if "%~1"=="" goto endparse
if "%~1"=="--source_branch" (
    set "source_branch=%~2"
    shift
)
if "%~1"=="-s" (
    set "source_branch=%~2"
    shift
)
if "%~1"=="--target_branch" (
    set "target_branch=%~2"
    shift
)
if "%~1"=="-t" (
    set "target_branch=%~2"
    shift
)
shift
goto parse
:endparse

set "title=merge-%source_branch%-%target_branch%"

set access_token=your_access_token
set project_id=your_project_id

curl --request POST --header "PRIVATE-TOKEN: %access_token%" --data "source_branch=%source_branch%&target_branch=%target_branch%&title=%title%" "https://gitlab.com/api/v4/projects/%project_id%/merge_requests" > nul 2>&1

if %errorlevel% equ 0 (
    echo Successful
) else (
    echo Failed
)
