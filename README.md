# Getting Started With CampFinderCO (Backend)

CampFinderCO was created to allow campers from Colorado and around the country to discover, submit, and review dispersed or backcounty campsites. Feel free to check it out and let me know what you think!

The following steps are to set up and get started with the backend of the project.

# Git Clone

> Go to:  https://github.com/andrrowens/camp-finder-backend

Next, click on Fork button at the top right of your screen.

![ForkBtn](https://www.earthdatascience.org/images/earth-analytics/git-version-control/githubguides-bootcamp-fork.png)

Next, click on Create Fork

![](https://github.com/jccaropino7786/legendary-phase1-project/blob/main/images%20and%20gifs/create%20fork.PNG?raw=true)

Next, click on the green <>Code button. A dropdown should appear. 

Make sure to select Local and SSH as shown in the image below and then click the button with two overlapping boxes located in the center-right of the screen. This will copy the SSH key for you.

![](https://i.imgur.com/WocsXaR.png)

Next, open up your terminal and navigate to the directory where you would like to clone CampFinderCO's backend.

Then type: 

> git clone

Then paste the copied SSH key from GitHub by right clicking or pressing command + v (Mac users) or ctrl + v (Windows users).

Once the SSH key is pasted press enter.

Then type:

> ls

Find the file "camp-finder-backend"

Then navigate into the project directory typing:

> cd camp-finder-backend


Then type:

> code .

This will open up the project repository in VSCode.

Inside your terminal in VScode we'll want to start the server by typing:

> rails s

This will start our backend API.

Be sure to also check out https://github.com/andrrowens/phase-4-project-frontend for CampFinderCO's frontend repository.

Cheers!
