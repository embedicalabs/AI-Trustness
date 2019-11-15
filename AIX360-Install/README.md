# AIX360

# BEFORE START

You can use automated installation if you want. If you want automated install follow these steps:
-download “aix360-install.bat”
- put them on anywhere you want. make sure they are on same folder.
-run the “aix360-install.bat” file.
- Its done! now you can use anaconda navigator to access that environment which named aix

if you want to install it manually, you can start with step-1. Good luck!

# STEP-1 (Downloading the IBM AIX360)

First go to the “https://github.com/IBM/AIX360” URL and then download zip file. After downloading extract it to under Documents(For Example: C:\Users\Berk\Documents\AIX360) after extracting it should look like this:

now delete the “-master” from folder name.
after this we need to create a new environment and work on that environment.

# STEP-2 ( Creating New Environment)

now open the anaconda terminal and run this command:
*conda create --name aix360 python=3.6*

this command will create a new environment with python 3.6.9.
after that activate that environment with the following code:
*conda activate aix360*

!! Important !!: make sure that you are in aix360 environment when you are playing with aix360 or adding new libraries to it


# STEP-3 (Installing Necessary Libraries)

now on the terminal run the codes below

we need to install torch first. select the below sections according to your system. After installing one of them continue to follow the guide.
For Windows ( Only CPU ):
*pip install torch==1.3.1+cpu torchvision==0.4.2+cpu -f https://download.pytorch.org/whl/torch_stable.html*

For Other OS’s or for GPU version:
-please refer to this URL  https://pytorch.org/get-started/locally/ . Select the pip version, your OS, python 3.6 and either cuda 9 or 10. I will share a guide for how to install cuda on the computer as well. after getting the command replace “pip3” with “pip” in the command line and run that command on the terminal


Now install the c++ build tools for some libraries:
http://go.microsoft.com/fwlink/?LinkId=691126&fixForIE=.exe

After installing torch now we will install another library. Run that command on the terminal:

*pip install cvxpy*

now we can install aix360. First check for the path of aix360. In my case, path of aix360 is C:\Users\Berk\Documents\AIX360


so now change the directory on the terminal with this command:
*cd “path of your aix360”*

in my case the command is looking like this:
*cd C:\Users\Berk\Documents\AIX360*


after accessing the aix360 directory we can install it. Run the command below:
*pip install -e .*

# STEP-4 ( Extra Libraries and Jupyter Notebook or Lab)

Let’s start. Now run these commands below on the terminal one line at a time
*conda install -c conda-forge jupyterlab*

*conda install -c conda-forge ipywidgets*

*conda install scipy=1.2.1*

now you can open up the anaconda navigator and on the left side come to the environments then select the aix360 environment. After that come to the dashboard and open the jupyter lab. Now you can work on jupyter lab in aix360 environment. Also, if you want, you can install the jupyter notebook on the dashboard after you select the aix360 environment.

