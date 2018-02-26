@echo off & setlocal
color fc
set momentum=0.9
set learningrate=0.01
goto Main

###main

:Main 
set /a int = %random% * 1 / 32768 + 1 - 1

###neuron

:Neuron
###Sets gain with a weight of 1-3###

set /a gain= %random% * 3 /32768 + 1

###creates the neurons input-later to be direct file input###

set /a dend0=%random%*2/32768+1-1
set /a dend0=%dend0%/%gain%

set /a dend1=%random%*2/32768+1-1
set /a dend1=%dend1%/%gain%
 
set /a dend2=%random%*2/32768+1-1
set /a dend2=%dend2%/%gain%

###output
set /a output=%dend0%=%dend1%+%dend2%/3
echo %output%
goto Int

:Int
set /a t1=%output%
set /a t2=%output%
set /a t3=%output%
set /a t4=%output%
set /a t5=%output%
