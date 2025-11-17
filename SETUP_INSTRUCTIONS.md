# How to Run Your Website Locally

## Step 1: Install Hugo Extended

1. Download Hugo Extended from: https://github.com/gohugoio/hugo/releases
   - Look for the latest `hugo_extended_X.X.X_windows-amd64.zip` file
   - Extract it to a folder (e.g., `C:\Hugo\bin`)
   
2. Add Hugo to your PATH:
   - Press `Win + X` and select "System"
   - Click "Advanced system settings"
   - Click "Environment Variables"
   - Under "System variables", find "Path" and click "Edit"
   - Click "New" and add the path where you extracted Hugo (e.g., `C:\Hugo\bin`)
   - Click OK on all dialogs
   
3. Restart your terminal/PowerShell

## Step 2: Install pnpm

Run this command in PowerShell (as Administrator):
```powershell
iwr https://get.pnpm.io/install.ps1 -useb | iex
```

Or install via npm (if you have Node.js):
```powershell
npm install -g pnpm
```

## Step 3: Install Dependencies

Open PowerShell in your project folder and run:
```powershell
pnpm install
```

## Step 4: Run the Development Server

```powershell
pnpm dev
```

Or if you have Hugo installed directly:
```powershell
hugo server --disableFastRender
```

The website will be available at: **http://localhost:1313**

---

## Alternative: Quick Setup with Chocolatey (if you have it)

```powershell
# Install Hugo Extended
choco install hugo-extended

# Install pnpm
choco install pnpm

# Then run
pnpm install
pnpm dev
```




