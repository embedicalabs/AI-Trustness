set crpath=%CD%
for /f "tokens=2*" %%a in ('REG QUERY "HKEY_CURRENT_USER\Software\Python\ContinuumAnalytics\Anaconda37-64\InstallPath" /ve') do set "regpath=%%~b"
@RD /S /Q "%regpath%\envs\aif"
bitsadmin /transfer aif360 /priority FOREGROUND "https://github.com/IBM/AIF360/archive/master.zip" "C:\Users\%USERNAME%\Downloads\aif.zip"
powershell.exe -NoP -NonI -Command "Expand-Archive 'C:\Users\%USERNAME%\Downloads\aif.zip' '%crpath%'"
call "%regpath%\Scripts\activate.bat" "%regpath%"
call conda create --name aif python=3.6 -y
call conda activate aif
cd "%crpath%\AIF360-master"
pause
bitsadmin /transfer visualcppdownload /download /priority normal https://download.microsoft.com/download/5/f/7/5f7acaeb-8363-451f-9425-68a90f98b238/visualcppbuildtools_full.exe "C:\Users\%USERNAME%\Downloads\visualcppbuildtools_full.exe"
cd "C:\Users\%USERNAME%\Downloads"
start visualcppbuildtools_full.exe
echo "please install the build tool. After installing press any button to continue" 
PAUSE
cd "%crpath%"
pip install -r requirements.txt
cd "%crpath%\AIF360-master"
pip install -e .
call conda install pytorch-cpu torchvision-cpu -c pytorch -y
echo installation complete. press any key to close this terminal
PAUSE
