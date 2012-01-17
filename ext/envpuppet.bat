@echo off
SETLOCAL

REM net use Z: "\\vmware-host\Shared Folders" /persistent:yes

SET PUPPET_DIR=%~dp0..
SET FACTER_DIR=%PUPPET_DIR%\..\facter

SET PATH=%PUPPET_DIR%\bin;%FACTER_DIR%\bin;%PATH%
SET RUBYLIB=%PUPPET_DIR%\lib;%FACTER_DIR%\lib;%RUBYLIB%
SET RUBYLIB=%RUBYLIB:\=/%

ruby -S %*
