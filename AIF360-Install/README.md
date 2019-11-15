# AIF360

# BEFORE START
You can use automated installation if you want. If you want automated install follow these steps:
- download “aif360-install.bat” and “requirements.txt” file from this folder
- put them on anywhere you want. make sure they are on same folder.
- run the “aif360-install.bat” file.
- Its done! now you can use anaconda navigator to access that environment which named aif

if you want to install it manually, you can start with step-1. Good luck!

# STEP-1 (Downloading the IBM AIF360)
First go to the “https://github.com/IBM/AIF360” URL and then download zip file. After downloading extract it to under Documents.
now delete the “-master” from folder name.
after this we need to create a new environment and work on that environment.

# STEP-2 ( Creating New Environment)
now open the anaconda terminal and run this command:

- *conda create --name aif360 python=3.6*

this command will create a new environment with python 3.6.9.
after that activate that environment with the following code:
- *conda activate aif360*

*!! Important !!:* make sure that you are in aif360 environment when you are playing with aif360 or adding new libraries to it

# STEP-3 (Installing Necessary Libraries)

Now install the c++ build tools for some libraries(if you already installed this for another project then you can skip this)::
http://go.microsoft.com/fwlink/?LinkId=691126&fixForIE=.exe.

now we can install aif360. First check for the path of aif360. In my case, path of aif360 is C:\Users\Berk\Documents\AIF360
so now change the directory on the terminal with this command:
- *cd “path of your aif360”*

in my case the command is looking like this:
- *cd C:\Users\Berk\Documents\AIF360*

after accessing the air directory we can install it. Download the requirement.txt on the same folder as this guide and put it on path of your air( in my case C:\Users\Berk\Documents\AIF360). Replace the files if asked. Run the command below:

- *pip install -e .*
- *pip install -r requirements.txt*
- *conda install pytorch-cpu torchvision-cpu -c pytorch*




