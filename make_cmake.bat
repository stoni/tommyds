@echo off

SET MODE=debug

if not "%1" == "" SET MODE=%1

SET CMD=cmake
SET CMD=%CMD% -DCMAKE_BUILD_TYPE=%MODE% -G"NMake Makefiles"

SET OLD_DIR=%CD%

if not exist build mkdir build
cd build
call %CMD% ..
call nmake
cd..

cd %OLD_DIR%

SET OLD_DIR=

:exit
