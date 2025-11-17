# Debug script for Hugo server
Write-Host "=== Debugging Hugo Server ===" -ForegroundColor Cyan
Write-Host ""

# Refresh PATH
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

# Check if tools are available
Write-Host "Checking installed tools..." -ForegroundColor Yellow
Write-Host ""

Write-Host "Node.js version:" -ForegroundColor Green
node --version
Write-Host ""

Write-Host "Hugo version:" -ForegroundColor Green
hugo version
Write-Host ""

Write-Host "pnpm version:" -ForegroundColor Green
pnpm --version
Write-Host ""

# Check if dependencies are installed
Write-Host "Checking dependencies..." -ForegroundColor Yellow
if (Test-Path "node_modules") {
    Write-Host "✓ node_modules folder exists" -ForegroundColor Green
} else {
    Write-Host "✗ node_modules folder missing - running pnpm install..." -ForegroundColor Red
    pnpm install
}
Write-Host ""

# Check current directory
Write-Host "Current directory:" -ForegroundColor Yellow
Get-Location
Write-Host ""

# Try to start server
Write-Host "Starting Hugo server..." -ForegroundColor Yellow
Write-Host "Server will be available at: http://localhost:1313" -ForegroundColor Green
Write-Host "Press Ctrl+C to stop" -ForegroundColor Yellow
Write-Host ""

# Start server (this will run in foreground so you can see errors)
hugo server --disableFastRender --bind 0.0.0.0 --port 1313




