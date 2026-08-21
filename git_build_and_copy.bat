@echo off

cd /d D:\copexErp\frontEnd

call npm run build
if errorlevel 1 (
    echo Build failed. Aborting copy.
    pause
    exit /b 1
)

@REM robocopy dist D:\copexErp\copex_erp_live_dist\built_files\ /E /PURGE
robocopy dist D:\copexErp\copex_erp_live_dist\dist\ /E /PURGE



cd /d D:\copexErp\copex_erp_live_dist

start start git_push.bat


@REM start dist

@REM git add .
@REM git commit -m "m"
@REM git push

pause