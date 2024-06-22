@echo off
REM Get today's date
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /format:list') do set datetime=%%I

REM Extract year, month, and day from the date
set today_year=%datetime:~0,4%
set today_month=%datetime:~4,2%
set today_day=%datetime:~6,2%

REM Calculate today's date in months since January 1, 0000
set /a julian_today=(%today_year%-1)*12 + %today_month%

REM Calculate the target date (July 12, 2047) in months since January 1, 0000
set target_date=20470712
set /a julian_target=(%target_date:~0,4%-1)*12 + %target_date:~4,2%

REM Calculate the difference in months
set /a diff_months=%julian_target% - %julian_today%

REM Display the result in the specified format and save to TheMonthIDie.txt
echo %diff_months% months until death. > TheMonthIDie.txt

REM Notify user
echo Result saved to TheMonthIDie.txt