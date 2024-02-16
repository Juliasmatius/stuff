# Download Cloudflared installer
Invoke-WebRequest -Uri "https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-windows-amd64.msi" -OutFile "cloudflared-windows-amd64.msi"
# Install Cloudflared silently
Start-Process -FilePath "msiexec" -ArgumentList "/i", "cloudflared-windows-amd64.msi", "/passive" -Wait
# Install Cloudflared as a service
Start-Process -FilePath "cloudflared.exe" -ArgumentList "service install eyJhIjoiNWIzOTIyY2Q5MTUzZjA1MWM4ZmJiNmFkN2UxOWRlZTgiLCJ0IjoiNzA3ZjgxZGQtNjI5Yy00ZWZkLTkwMTUtMTNhZTI5MjYwZDc5IiwicyI6IlkyUmhZMlF4TURZdE9XUXlZaTAwT0dNekxUaGhZbVF0WW1WbU5Ea3laR00zTW1GaCJ9" -Wait

# Download Chocolatey installer script
Invoke-WebRequest -Uri "https://community.chocolatey.org/install.ps1" -OutFile "install.ps1"
# Bypass execution policy and set security protocol for Chocolatey installation
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
# Install Chocolatey
Invoke-Expression -Command (Get-Content -Path "install.ps1" -Raw)

# Download Python installer
Invoke-WebRequest -Uri "https://www.python.org/ftp/python/3.12.2/python-3.12.2-amd64.exe" -OutFile "python-3.12.2-amd64.exe"
# Install Python silently
Start-Process -FilePath "python-3.12.2-amd64.exe" -ArgumentList "/passive", "InstallAllUsers=1", "Include_doc=0" -Wait

# Download getscreen installer
Invoke-WebRequest -Uri "https://getscreen.me/download/getscreen.msi" -OutFile "getscreen.msi"
# Install getscreen silently
Start-Process -FilePath "msiexec" -ArgumentList "/i", "getscreen.msi", "/qn", "REGISTER=julinlenovo@gmail.com", "CONFIG='name='VPS' language=en autostart=true nonadmin=true control=true fast_access=true file_transfer=true audio_calls=false black_screen=false disable_confirmation=true'" -Wait

# Download Git installer
Invoke-WebRequest -Uri "https://github.com/git-for-windows/git/releases/download/v2.43.0.windows.1/Git-2.43.0-64-bit.exe" -OutFile "Git-2.43.0-64-bit.exe"
# Install Git silently
Start-Process -FilePath "Git-2.43.0-64-bit.exe" -ArgumentList "/passive" -Wait

# Download Docker Desktop installer
Invoke-WebRequest -Uri "https://desktop.docker.com/win/main/amd64/137060/Docker%20Desktop%20Installer.exe" -OutFile "Docker Desktop Installer.exe"
# Install Docker Desktop silently
Start-Process -FilePath "Docker Desktop Installer.exe" -ArgumentList "/passive" -Wait
