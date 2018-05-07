@echo off & setlocal
color 0a
set momentum=0.9
set learningrate=0.01
set gen = 0
goto Main



:Main
cls

set /a int = %random% * 3 / 32768 + 1



:Neuron
set /a gain = %random% * 3 / 32768 + 1

set /a dend0 = %random% * 2 / 32768 + 1
set /a dend0 = %dend0%/%gain%

set /a dend1 = %random% * 2 / 32768 + 1
set /a dend1 = %dend1%/%gain%
 
set /a dend2 = %random% * 2 / 32768 + 1
set /a dend2 = %dend2%/%gain%

set /a dend3 = %random% * 2 / 32768 + 1
set /a dend3 = %dend3%/%gain%

set /a output=%dend0% + %dend1% + %dend2% + %dend3%
set /a output=%output% / 4 
goto Table1



:Table1
set /a t1=%dend0%
set /a t2=%dend1%
set /a t3=%dend2%
set /a t4=%dend3%
set /a t5=%gain%
set /a t6=%output%
echo 0 %t1%
echo 1 %t2%
echo 2 %t3%
echo 3 %t4%
echo g %t5%
echo o %t6%
goto Int



:Int
set /a line1 = hello
set /a line2 = how
set /a line3 = are
set /a line4 = you
goto Base

:Base
cls


set /a dend0t=0
set /a dend1t=0
set /a dend2t=0
set /a dend3t=0

if %dend0% == 0 echo no 
if %dend0% == 1 echo yes && set /a dend0t=%random% * 4 /32768 +1
if %dend0% == 2 echo super

if %dend1% == 0 echo no
if %dend1% == 1 echo yes && set /a dend1t=%random% * 4 /32768 +1
if %dend1% == 2 echo super

if %dend2% == 0 echo no
if %dend2% == 1 echo yes && set /a dend2t=%random% * 4 /32768 +1
if %dend2% == 2 echo super

if %dend3% == 0 echo no
if %dend3% == 1 echo yes && set /a dend3t=%random% * 4 /32768 +1
if %dend3% == 2 echo super
pause >nul
goto vis

:vis
echo %dend0t% %dend1t% %dend2t% %dend3t%
set /a vis0=0
set /a vis1=0
set /a vis2=0
set /a vis3=0

if %dend0t% == 1 echo hello && set /a vis0 = 1
if %dend0t% == 2 echo how
if %dend0t% == 3 echo are
if %dend0t% == 4 echo you

if %dend1t% == 1 echo hello
if %dend1t% == 2 echo how && set /a vis1 = 1
if %dend1t% == 3 echo are
if %dend1t% == 4 echo you

if %dend2t% == 1 echo hello
if %dend2t% == 2 echo how
if %dend2t% == 3 echo are && set /a vis2 = 1
if %dend2t% == 4 echo you

if %dend3t% == 1 echo hello
if %dend3t% == 2 echo how
if %dend3t% == 3 echo are
if %dend3t% == 4 echo you && set /a vis3 = 1

echo %vis0%
echo %vis1%
echo %vis2%
echo %vis3%
pause
goto gen

:gen
