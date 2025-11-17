# Start Hugo Development Server
# This script starts the local development server for your website

Write-Host "Starting Hugo development server..." -ForegroundColor Green
Write-Host ""

# Refresh PATH to include newly installed tools
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

# Start the server
pnpm dev




