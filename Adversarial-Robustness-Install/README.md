# Adversarial-Robustness

beforehand air(AI robustness) stands for adversarial robustness. this way it is easiear to write. *laziness*
# BEFORE START
You can use automated installation if you want. If you want automated install follow these steps:
- download “air-install.bat” and “requirements.txt” file from this github folder
- put them on anywhere you want. make sure they are on same folder.
- run the “air-install.bat” file.
- Its done! now you can use anaconda navigator to access that environment which named air

if you want to install it manually, you can start with step-1. Good luck!

# STEP-1 (Downloading the IBM ART)
First go to the “https://github.com/IBM/adversarial-robustness-toolbox” URL and then download zip file. After downloading extract it to under Documents.
now delete the “-master” from folder name.

after this we need to create a new environment and work on that environment.

# STEP-2 ( Creating New Environment)
now open the anaconda terminal and run this command:

- *conda create --name air python=3.6*

this command will create a new environment with python 3.6.9.
after that activate that environment with the following code:
- *conda activate air*

you will see (air) at the beginning of the command line when you are in the environment
!! Important !!: make sure that you are in air environment when you are playing with air or adding new libraries to it

# STEP-3 (Installing Necessary Libraries)

now we can install air. First check for the path of air. In my case, path of air is C:\Users\Berk\Documents\adversarial-robustness-toolbox

so change the directory on the terminal with this command:
- *cd “path of your air”*

in my case the command is looking like this:
- *cd C:\Users\Berk\Documents\adversarial-robustness-toolbox*

after accessing the air directory we can install it. Download the requirement.txt on the same folder as this guide and put it on path of your air( in my case C:\Users\Berk\Documents\adversarial-robustness-toolbox). Replace the files if asked. Run the command below:

- *pip install -r requirements.txtpip install torch==1.3.1+cpu torchvision==0.4.2+cpu -f https://download.pytorch.org/whl/torch_stable.html*
- *pip install .*

# STEP-4 ( Running the Examples)

You can see the notebooks folder on the air directory. in that folder you can use jupyter notebook or lab. but the examples folder contains different type of python file. If you want to run these, just follow the steps below.
so running these codes is different from the others.Lets run an examples. first change directory on terminal to examples
- *cd “path of your air examples”*

in my case it looks like these:
- *cd C:\Users\Berk\Documents\adversarial-robustness-toolbox\examples*

now after changing directory we can run these examples. Type these commands on the terminal to run an example. you can change get_started_xgboost.py with another example but keep in mind that you need to add “.py” after the name of the files. Also keep in mind that you need to be inside of air environment

- *python get_started_xgboost.py*

