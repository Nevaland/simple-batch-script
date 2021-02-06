@echo off
pushd "%~dp0"

set YEAR=%date:~0,4%
set MONTH=%date:~5,2%
set DAY=%date:~8,2%

if not exist %YEAR%\%YEAR%.%MONTH%\%YEAR%.%MONTH%.%DAY%.md (
	mkdir %YEAR%
	mkdir %YEAR%\%YEAR%.%MONTH%
	echo ###### %YEAR%.%MONTH%.%DAY%>> %YEAR%\%YEAR%.%MONTH%\%YEAR%.%MONTH%.%DAY%.md
) 

start %YEAR%\%YEAR%.%MONTH%\%YEAR%.%MONTH%.%DAY%.md
popd