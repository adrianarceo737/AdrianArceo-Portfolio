# Quick Start Guide - Fix Connection Issues

## Important: Hugo runs on port 1313, NOT 8080!

If you're seeing "ERR_CONNECTION_REFUSED" on port 8080, you need to access port **1313** instead.

## Step-by-Step Fix:

### 1. Open a NEW PowerShell window
   - Close any existing terminal windows
   - Open PowerShell as Administrator (right-click → Run as Administrator)
   - Navigate to your project:
     ```powershell
     cd "C:\Users\Salubayba\Documents\GitHub\theme-academic-cv"
     ```

### 2. Run the debug script:
   ```powershell
   .\debug-server.ps1
   ```

   OR manually run:
   ```powershell
   hugo server --disableFastRender
   ```

### 3. Look for this message:
   ```
   Web Server is available at http://localhost:1313/
   ```

### 4. Open your browser and go to:
   ```
   http://localhost:1313
   ```
   **NOT** http://localhost:8080

## Common Issues:

### Issue: "hugo: command not found"
**Solution:** Close and reopen your PowerShell window to refresh PATH

### Issue: "pnpm: command not found"  
**Solution:** Run `npm install -g pnpm` again

### Issue: Server starts but shows errors
**Solution:** Check the error messages in the terminal - they will tell you what's wrong

### Issue: Port 1313 already in use
**Solution:** 
```powershell
# Find what's using the port
netstat -ano | findstr :1313
# Kill the process (replace PID with the number from above)
taskkill /PID <PID> /F
```

## Alternative: Use pnpm dev
```powershell
pnpm dev
```
This should also start the server on port 1313.

## Still Having Issues?

Run this command to see detailed error messages:
```powershell
hugo server --verbose --disableFastRender
```




