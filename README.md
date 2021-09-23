# Achieve

![Alt text](public/images/Screen Shot 2021-09-23 at 1.00.25 PM.png?raw=true "Title")

This application was built for people who struggle with accomplishing their goals. It walks them through each step of creating a S.M.A.R.T goal and allows them to track their progress along the way. 

## Installation

To view the site, both the backend and frontend will need set up
  
1) Set up backend:
  * Clone the [achieve_backend repo](https://github.com/ericlombardo/achieve_backend) using the link in the top right corner
  * Run `git clone <paste_clone_link>` in desired directory
  * Navigate inside the directory and run:
    * `bundle install` 
    * `rails db:migrate`
    * `rails db:seed`
    * `rails s` to start server
  * Once you see server is running, backend setup is complete (leave this terminal open)


2) Set up frontend:
  * Clone the [achieve_client repo](https://github.com/ericlombardo/achieve_client) using the link in the top right corner
  * Run `git clone <paste_clone_link>` in desired directory
  * Navigate into the cloned directory
  * Run `npm install` to download all dependencies for the application
  * Run `npm start` to launch the page and start tracking your goals
    * NOTE: When running `npm start` it may alert you that you are already using localhost3000. That is what your backend Rails API is using. You should be prompted to use a different port. Press Y to continue using localhost3001.

## Build Status
While the application is functional for personal use, it is still in the development phase. I would like to add a user feature that would allow multiple people to log in securely and track their goals. Other features would include the ability to give encouragment as they achieve each of their milestones.

## Attribution
