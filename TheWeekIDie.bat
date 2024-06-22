@echo off
REM Get today's date
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /format:list') do set datetime=%%I

REM Extract year, month, and day from the date
set today_year=%datetime:~0,4%
set today_month=%datetime:~4,2%
set today_day=%datetime:~6,2%

REM Calculate today's date in days since January 1, 0000 (Julian date)
set /a julian_today=(%today_year%-1)*365 + (%today_year%-1)/4 - (%today_year%-1)/100 + (%today_year%-1)/400 + (%today_month%*367-362)/12 + (%today_day%-1)

REM Calculate the target date (July 12, 2047) in days since January 1, 0000 (Julian date)
set target_date=20470712
set /a julian_target=(%target_date:~0,4%-1)*365 + (%target_date:~0,4%-1)/4 - (%target_date:~0,4%-1)/100 + (%target_date:~0,4%-1)/400 + ((%target_date:~4,2%*367-362)/12) + (%target_date:~6,2%-1)

REM Calculate the difference in weeks
set /a diff_weeks=(%julian_target% - %julian_today%) / 7

REM Display the result in the specified format and save to TheWeekIDie.txt
echo %diff_weeks% weeks until death. > TheWeekIDie.txt

REM Notify user
echo Result saved to TheWeekIDie.txt