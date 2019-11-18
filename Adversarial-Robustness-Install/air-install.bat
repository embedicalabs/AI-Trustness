set crpath=%CD%
for /f "tokens=2*" %%a in ('REG QUERY "HKEY_CURRENT_USER\Software\Python\ContinuumAnalytics\Anaconda37-64\InstallPath" /ve') do set "regpath=%%~b"
@RD /S /Q "%regpath%\envs\air"
bitsadmin /transfer air /priority FOREGROUND "https://github.com/IBM/adversarial-robustness-toolbox/archive/master.zip" "C:\Users\%USERNAME%\Downloads\air.zip"
powershell.exe -NoP -NonI -Command "Expand-Archive 'C:\Users\%USERNAME%\Downloads\air.zip' '%crpath%'"
call "%regpath%\Scripts\activate.bat" "%regpath%"
call conda create --name air python=3.6 -y
call conda activate air
cd "%crpath%\adversarial-robustness-toolbox-master"
bitsadmin /transfer visualcppdownload /download /priority normal https://download.microsoft.com/download/5/f/7/5f7acaeb-8363-451f-9425-68a90f98b238/visualcppbuildtools_full.exe C:\Users\%USERNAME%\Downloads\visualcppbuildtools_full.exe
cd "C:\Users\%USERNAME%\Downloads"
start visualcppbuildtools_full.exe
echo "please install the build tool. After installing press any button to continue" 
PAUSE
cd "%crpath%"
pip install -r requirements.txt
pip install torch==1.3.1+cpu torchvision==0.4.2+cpu -f https://download.pytorch.org/whl/torch_stable.html
cd "%crpath%\adversarial-robustness-toolbox-master"
pip install .
echo installation complete. press any key to close this terminal
PAUSE
