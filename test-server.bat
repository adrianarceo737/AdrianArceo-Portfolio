@echo off
echo ========================================
echo   Starting Hugo Development Server
echo ========================================
echo.
echo IMPORTANT: Use port 1313, NOT 8080!
echo.
echo Your website will be at: http://localhost:1313
echo.
echo Press Ctrl+C to stop the server
echo.
echo ========================================
echo.

hugo server --disableFastRender --bind 0.0.0.0 --port 1313

pause




