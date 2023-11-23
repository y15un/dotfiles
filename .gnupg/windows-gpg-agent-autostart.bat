@echo off

echo initializing...

:while
gpg --card-status 1>nul 2>&1
if %errorlevel% neq 0 (
    echo please insert your security key now, then press enter/return
    set /p omgwtfbbq=
    goto :while
)
