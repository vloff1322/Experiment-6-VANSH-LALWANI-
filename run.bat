@echo off
cd /d "%~dp0"
echo Using .NET SDK:
dotnet --version
echo.
echo Restoring packages (needs internet the first time)...
dotnet restore ModernProductCatalogApp.csproj
if errorlevel 1 (
  echo.
  echo RESTORE FAILED - check your internet connection and send me the error text above.
  pause
  exit /b 1
)
start "" cmd /c "timeout /t 6 >nul & start http://localhost:5280"
dotnet run --project ModernProductCatalogApp.csproj --urls http://localhost:5280
pause
