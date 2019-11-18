set crpath=%CD%
for /f "tokens=2*" %%a in ('REG QUERY "HKEY_CURRENT_USER\Software\Python\ContinuumAnalytics\Anaconda37-64\InstallPath" /ve') do set "regpath=%%~b"
@RD /S /Q "%regpath%\envs\aix"
bitsadmin /transfer aix/priority FOREGROUND "http://github.com/IBM/AIX360/archive/master.zip" "C:\Users\%USERNAME%\Downloads\aix.zip"
powershell.exe -NoP -NonI -Command "Expand-Archive 'C:\Users\%USERNAME%\Downloads\aix.zip' '%crpath%'"
call "%regpath%\Scripts\activate.bat" "%regpath%"
call conda create --name aix python=3.6 -y
call conda activate aix
rem call C:\Users\Berk\AppData\Local\Continuum\anaconda3\Scripts\activate.bat C:\Users\Berk\AppData\Local\Continuum\anaconda3\envs\aix
pip install torch==1.3.1+cpu torchvision==0.4.2+cpu -f https://download.pytorch.org/whl/torch_stable.html
rem "C:\Users\%USERNAME%\AppData\Local\Continuum\anaconda3\python.exe" "%crpath%\AIX360-master\install\install.py"
cd %crpath%\AIX360-master
bitsadmin /transfer visualcppdownload /download /priority normal https://download.microsoft.com/download/5/f/7/5f7acaeb-8363-451f-9425-68a90f98b238/visualcppbuildtools_full.exe C:\Users\%USERNAME%\Downloads\visualcppbuildtools_full.exe
cd "C:\Users\%USERNAME%\Downloads"
start visualcppbuildtools_full.exe
echo "please install the build tool. After installing press any button to continue" 
PAUSE
cd "%crpath%\AIX360-master"
pip install cvxpy
pip install -e .
call conda install -c conda-forge ipywidgets -y
call conda install scipy=1.2.1 -y
echo installation complete. press any key to close this terminal
PAUSE
