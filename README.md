# Contrack

## Live-app: ##

## Table of contents ##
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

The need we are addressing in our project is to assist recruiters in determining when currently contracted workers finish their contracts, based upon their end dates. This is not currently the feature of The major platforms including LinkedIN..etc. 

## Features ##
* Authenticate and authorise users.
* Recruiters can search contractor information with filtering system.
* Search results are sorted by end-date.
* Allowing Contractors to upload files 
 
## Installation & Setup ##
Clone our application to your local machine.

You will then need to open the command line directory on the applicaiton and install all of the libraries:
* bundle install

Creating the database is the next step:
* rails db:create

we then migrate the database:
* rails db:migrate

Lastly run the server
* rails s

## Project Manangement ##

## Wireframe ##
![Wireframe1](https://i.imgur.com/VAT2W0q.jpg)
![Wireframe2](https://i.imgur.com/cgXXedQ.jpg)

## ERD ##
![ERD](https://i.imgur.com/gj44S1i.jpg)

## User Flow ##
![Userflow](https://i.imgur.com/bRwe3j3.jpg)

## Trello ##
![Trello](https://i.imgur.com/i00w917.jpg)

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

### 9. Explain the different high-level components (abstractions) in your App. ###

MVC is connected through a naming convention. The model always has to be singular where as the related View and Controller has to be plural.  

### 10. Detail any third party services that your App will use. ###

AWS for storing our files in the cloud, Stripe for payment methods , HEROKU for web server application, Device for authentication, CarrierWave for uploader and Textacular for search functions. 

### 11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb). ###

LINKEDIN - is a network based platform that lists both job seekers and currently employed individuals and their CV information. This allows recruiters and employers to search through the database of individuals, and individuals to connect to their network of 

### 12. Discuss the database relations to be implemented. ###

We choose to seperate the models for users, contractors, recruiters and languages as its is a logical way to seperate our data, this also makes it more efficient while searching the Database. friends, business contacts and influencers.

### 13. Describe your project’s models in terms of the relationships (active record associations) they have with each other. ###

Users: 
  has_one :contractor
  has_one :recruiter
  has_many :language_users
  has_many :languages, through: :language_users, dependent: :destroy 
  
Contractor:
  belongs_to :user

Recruiter: 
  belongs_to :user
  
languages:
  has_many :language_users
  has_many :users, through: :language_users
 
language_users:
 belongs_to :user
 belongs_to :language

### 14. Provide your database schema design. ###

### 15. Provide User stories for your App. ###

1. As a recruiter, I would like to search up contractors based on their end dates.

2. As a contractor, I would like to upload my informations for recruiters to find me. 

3. As a contractor, I would like to edit my information at will. 

4. As a contractor, I would like to find a recruiter who suits my time frame and tech skills.

5. As a recruiter, I would like to see contractors based on their expected pay range. 

6. As a recruiter, I would like to view searches of the contractors to be sorted by the end date.

### 16. Provide Wireframes for your App. ###

![Wireframe1](https://i.imgur.com/VAT2W0q.jpg)
![Wireframe2](https://i.imgur.com/cgXXedQ.jpg)

### 17. Describe the way tasks are allocated and tracked in your project. ###

Trello and Group Stand ups in the morning to track where everyone is at in terms of their works and also set goals for the day. 

### 18. Discuss how Agile methodology is being implemented in your project. ###
Trello has been efficiently implemented in order to escalate our productivity and also to inculcate the visual aspect of our progress. The verbal interaction to keep the track of our progress and set daily tasks of our project. These method we implemented were quite productive in managing tasks in our projects.

### 19. Provide an overview and description of your Source control process. ###
      
We used Git and Github for our source control process. We created a development branch from the master as a good practice to make sure we could test new features without interfering with the master branch. We each then created a branch from development so we could work independently on our designated tasks. When our individual work was completed we would then pull it into the development branch. Merge conflicts were solved on GitHub by comparing the code that we were trying to pull into development with the work we’d done on our branch. 

### 20. Provide an overview and description of your Testing process. ###

[Test sheet](https://docs.google.com/spreadsheets/d/1UvhEQiCZ4qyBGjsIGCwd7LcHBRQeiqijCfDAidRUrHo/edit#gid=0)

### 21. Discuss and analyse requirements related to information system security. ###

In terms of the server, we have used Heroku, which provides server using Https. We employed Devise Gem in order to encrypt and store user passwords. We use Stripe as a payment method, thus we don’t have to store credit card informations.

### 22. Discuss methods you will use to protect information and data. ###

We used the devise Gem to protect user passwords by using Bcrypt to encrypt their passwords once they are created and store in that encrypted information. Heroku is the server we have chosen to use for hosting our website, it provides us with a secure server for our customers to use.  We designated Stripe as our a payment method, it assists us getting payments with out attaining card informations.

### 23. Research what your legal obligations are in relation to handling user data. ###


