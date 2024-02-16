wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-windows-amd64.msi
msiexec /a "cloudflared-windows-amd64.msi" /passive
cloudflared.exe service install eyJhIjoiNWIzOTIyY2Q5MTUzZjA1MWM4ZmJiNmFkN2UxOWRlZTgiLCJ0IjoiNzA3ZjgxZGQtNjI5Yy00ZWZkLTkwMTUtMTNhZTI5MjYwZDc5IiwicyI6IlkyUmhZMlF4TURZdE9XUXlZaTAwT0dNekxUaGhZbVF0WW1WbU5Ea3laR00zTW1GaCJ9
wget https://community.chocolatey.org/install.ps1
powershell -Command "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;"
powershell -Command "(New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1') | iex;"
wget https://www.python.org/ftp/python/3.12.2/python-3.12.2-amd64.exe
python-3.12.2-amd64.exe /passive InstallAllUsers=1 Include_doc=0
wget https://getscreen.me/download/getscreen.msi
msiexec /i getscreen.ms /qn REGISTER="julinlenovo@gmail.com" CONFIG="name='VPS' language=en autostart=true nonadmin=true control=true fast_access=true file_transfer=true audio_calls=false black_screen=false disable_confirmation=true"
wget https://github.com/git-for-windows/git/releases/download/v2.43.0.windows.1/Git-2.43.0-64-bit.exe
Git-2.43.0-64-bit.exe /passive
wget https://desktop.docker.com/win/main/amd64/137060/Docker%20Desktop%20Installer.exe
Docker Desktop Installer.exe /passive
