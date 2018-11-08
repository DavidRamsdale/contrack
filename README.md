# Contrack

## Live-app: ##

markup : Table of contents
* About
* Features
* Installation & Setup
* Project Manangement
* User Flow
* User Stories
* Tech Stack
* Authors
* Short answers/questions

## About ##

## Features ##

## Installation & Setup ##

## Project Manangement ##

## User Flow ##

## User Stories ##

* As a recruiter, I would like to search up contractors based on their end dates.
* As a contractor, I would like to upload my informations for recruiters to find me. 
* As a contractor, I would like to edit my information at will. 
* As a contractor, I would like to find a recruiter who suits my time frame and tech skills.
* As a recruiter, I would like to see contractors based on their expected pay range.
* As a recruiter, I would like to view searches of the contractors to be sorted by the end date.

## Tech Stack ##

* Heroku
* Trello
* Bootstrap
* Ruby on rails
* HTML5
* CSS
* VSC (Visual studio code)
* Slack

## Gems ##

* Devise
* Textacular
* Stripe
* Carrierwave
* Faker


## Authors ##

* David Ramsdale
* Carl Gray
* Ghalip Yakob
* Scott O'Dea

## Short answers/questions ##

### 1. What is the need (i.e. challenge) that you will be addressing in your project? ###
   
The need we are addressing in our project is to assist recruiters in determining when currently contracted workers finish their contracts, based upon their end dates. This is not currently the feature of The major platforms including LinkedIN..etc. 

### 2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving? ###
  
The problem we are trying to solve by building this marketplace App is; as information about contact timeline and skill levels of workers are not generally available on other platforms, we will be linking the recruiters with Web Developers and Software Programmers.

### 3. Describe the project you will be conducting and how your App will address the needs. ###

The project we’ve undertaken will be giving recruiters access to our database, which contains relevant information about contractors and their end dates. Currently they have to contact candidates regarding when they will finish their contracts.

### 4. Describe the network infrastructure the App may be based on. ###

The network infrastructure our App is based on includes; Ruby On Rails, for our production of the application. Rails is a framework that uses the MVC structure to connect our database, logic and displays. AWS, to store files related to our contractors. Stripe for our payment system. This outsources our security concerns when handling vulnerable customer payment information. Heroku as our web server. This makes our website available for people to view and also automatically provides a DNS for us.

### 5. Identify and describe the software to be used in your App. ###
    
The software to be used in our App is Ruby on Rails, which has a lot of magic behind the scenes, which makes it much easier to launch a viable application. It allows for easy access to an MVC structure, which can link our models, controllers and views seamlessly.

### 6. Identify the database to be used in your App and provide a justification for your choice. ###

The Database to be used in our App is PostgreSQL. We use this because it has a lot of advantages. Its an Object-Relational Database, arrays of datas can be stored for most of the Data types, it has an optimal functional scalability and its an open source database. 

### 7. Identify and describe the production database setup (i.e. postgres instance). ###

Install PostgreSQL on our local machine. When generating the Rails application, use the command Rails new NAME -d Postrgresql -T to setup the Postgres database. 

### 8. Describe the architecture of your App ###

For the Architecture of our App we used Rails due to its out of the box architectural structure that creates an MVC. This allows for easy application development as there are a substantial number of generation methods. 

We used the Devise gem for user authentication procedures. This gem automatically encrypts user passwords using BCrypt, provides the views for all user related functions(login, sign-up, logout) and provides methods to authenticate the user interacting with our website.

We used Stripe for our payment method. This abstracts away security risks when dealing with customer information, as Stripe has a proven record of user-security.

We used AWS for it’s cloud structure which allows for storage of user files securely. Carrierwave is the uploader which interacts with our Rails application to send these user files to the cloud.

We used Textacular to assist with our searching procedures, it allows for efficient database queries with simple commands.

