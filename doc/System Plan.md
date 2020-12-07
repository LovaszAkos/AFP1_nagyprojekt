# 1. Overview 
## 1.1 About this document
Our team accepted a commission to make a fully functional website for people of music enthusiasts, where they can buy headphones and accessories for listening to music.
This document describes the project in detail, including the website's functionality, the team members, their roles and responsibilities, technologies we use in this project, development plans etc.

## 1.2 Project Overview:
The development team uses multiple technologies and software that that are described in this document. Furthermore, the Business Requirements, the development phases and goals of this project will be documented here. 

The following resources and documents will be used during the developement:
- The Functional Requirements of the project
- The features requested by the clients
-  The database structure and plan
-  The laws and industry standards that this project is subjected
-  Regulations
-  Terms and conditions
-  Cookies
-  Logging
-  Privacy policies like: advertising policies and third party privacy policies
-  CCPA and GDPR data protection rights

Some additional information:
- We are responsible for a website, that introduces headphone and headsets with their certain additionals.
- Develop a platform where users can choose from plenty of goods.
- Compare items
- Get a long description about the chosen headphone or headset
- Look for the best price/value products
- Provide a comfortable shopping experience

# 2. Project plan
## 2.1 Roles and responsibilities
### Backend developer:
Backend developers are responsible for developing the server-side code, they create the website's functions, and the data structures. They mainly use PHP codes.

### Frontend developer:
Frontend developers implement the visual elements that users see and interact with in the website. They make sure that users have no trouble navigating the website. They use HTML, CSS, JavaScript codes.

### Database developer:
Database developers are responsible for the storage and management of the data we use in this website. 

## 2.2 Team members

- Nyeste Réka - Frontend developer
- Nagy Zoltán - Backend developer
- Fügedi Csaba - Database developer
- Csanádi Balázs Tóbiás - Backend developer, team leader

- Dombi Tibor Dávid - Senior developer, supervisor
- Nagy Martin - Supervisor
- Balog Balázs - Supervisor

## 2.3 Project schedule

- 2020/10/20 Requirement and Functional specification documents
- 2020/10/27 System Plan
- 2020/11/03 Development start (Sprint 1)
- 2020/11/10 Development (Sprint 2)
- 2020/11/17 Introduce our project with a demo (+ Development Sprint 3)
- 2020/11/24 Development (Sprint 4), testing
- 2020/12/01 Development finish(Sprint 5), testing
- 2020/12/08 Review, project finish


## 2.4 Milestones
- 2020/10/20 Requirement and Functional specification documents have been finished

## 2.5 Technologies

### Web framework – Bootstap
Bootstap will be used to make the dynamic layout of the webshop, so it works smoothly on all resolutions in the browsers.

### Web server – Apache
An Apache web server will be used to store the database information, in which we will store the database writen in MySQL structure.

### Programming language – PHP
We are going to write our code in PHP, since it is the most used programming language for building websites. The PHP version which is going to be used is PHP 7.4 or higher since Laravel needs that environment.

### Communication – Discord, GitHub, Trello
- Discord is a communication software made for voice chat. Since Discord is free we are gonna use this software, because it is not sure that all of us will be in the same room when our company develops the webshop the client asked for. With this we will be able to communicate in real time with our coding partners, and since it has a normal chat function that follows the written messages, it will be easy to trace back with the problems that are brought up during development.

- GitHub is a free repository where the project will be stored during development. With this we can share and retrivel the versions of our work, and if something is not working we can reroll the changes so we don't have to start from the beginning.

- Trello is a free web-based Kanban-style list-making application. We can create our task boards with several columns and move the tasks between them. Typically columns include task statuses: To Do, In Progress and Done.

### Data structure store – MySQL
The database structure will be written accordig to the MySQL standards. Recommended version: MySQL 8.0

# 3. Business model
![Bus Model](https://github.com/Ryvenay/AFP1_nagyprojekt/blob/master/doc/Figures/Business%20Model_v1.0.png)
# 4. Requirements
## 4.1 Functional Requirements

Using common website elements and user management system:
- **Register:** The users should be able to sign up. This is also required for shopping and to use the shopping cart. After registration they will have a Profile Page.
- **Logging in and out:** Editors and users should be able to log in and out.
- **Possibility to change password:** Users' passwords should be changeable.
- **Profile details:** Users should be able to see and modify their profile details.
- **Data modification:** The user should be able to modify his/her personal information at the Profile Page.
- **Navigation to different pages:** Users should be able to navigate to any pages.
- **Permission rules:** Some pages require to login first before navigation.

Webshop functions:
- **Showing cards:** Users can easily separate the items and its descriptions when we show them as cards. 
- **Listing items, browsing:** The customer should be able to look around between the products and filter the them in the website.
- **Shopping cart:** The customer should be able to add or remove products to his/her cart.
- **Product details:** The customer should be able to see our products' details in a separate page.

## 4.2 Non-funtional Requirements
The site must (be):
- Easy to use
- User-friendly
- Navigate to the corresponding page
- Show error messages in different and consistent location and style
- Have control panels, button (some of them hidden from the general users)
- Have permission system
- Fit the EU Privacy Policy requirements

Supported browsers:
- Mozilla Firefox
- Microsoft Edge
- Google Chrome
## 4.3 Resources:
- Fully functional database with tables and relations
- Secure connection
- Intuitive/easy to use interface
- Creative front-end palette
- Based on PHP language and the user's demands
  
# 5. Functions
## 5.1 Participants
This website has two user level:
- Customer
- Manager

## 5.2 Use cases and scenarios

### Customer:
- Able to register a new account
- Able to log in to their account
- Able to log out to their account
- Able to see the home page
- Able to see the product listings by category
- Can filter through the products
- Can open a product and see it's detailed description page
- Able to add products to their cart
- Able to finish the order

### Manager:
- Has all the user privileges
- Able to add a new product
- Can modify an existing product
- Able to remove a product
- Has access to and able to see all the orders from other users

# 6. Physical environments
This application was made for web platform and should be used with the supported web browsers.

-   Software and external systems we're working with:
    -   Sublime Text Editor (for PHP)
    -   Gitkraken/Github for documentation
    -   Trello
    -   Visual Studio Code
    -   Discord
    -   Markdown Monster
    -   Stackedit.io

-   Hardware and Network:
    -   General hardware and network requirements

-   Development tools:
    -   Visual Studio Code
    -   Sublime Text Editor

-   Technologies:
    -   Bootstrap: Web framework, it is used to make the dynamic layout of the website. It works well with different resolutions and browsers.
    -   Apache: The Apache web server is used to store, process and deliver the webpage to the browsers.
    -   PHPMyAdmin: Administration tool for MySQL and MariaDB database server, where we store the data of our website, including editors account data and the articles.
    -   MySQL: The database structure will be implemented according to MySQL standards.
    -   PHP: The websties code will be implemented in PHP, which is the most popular way of building website.

# 7. Architecture plan
## 7.1 Backend
The system needs a database system, in this case the team uses a Visual Studio based client, where we store the user's data and the products. Web Client: The client is based on PHP technologies, which helps the client to be stable. On the other hand we can create creative and spectacular content for our users. Furthermore, it will be used to create the website's functions, handle user data and article content.

## 7.2 Frontend
The frontednd uses CSS, HTML and JavaScript codes and using Bootstrap as its framework, which helps to create a modern looking website and works well cross-platform.

# 8. Database plan

## 8.1 Objects

### Users

Users are registered accounts on the website. Their data that are needed for purchase is stored on our database.
- **id:** A unique identification number that is assigned at registration to every user. 
- **username:** A unique name the user chooses for their account name, it is required for user to log in to their account
- **password:** A one way hashed password that is needed to log in to an account.
- **first_name:** First name of the user as filled in the registration form
- **last_name:** Last name of the user as filled in the registration form
- **email:** Email address of the user. It's used for sending order and account information.
- **birthdate:** Date of birth of the user. 
- **billing_address:** Default billing address for this user (if any).
- **Shipping address**: Default shipping address for this user (if any). If this is empty, but the Billing address is filled use that as shipping address.
- **Regdate:** Date of registration. Filled out automatically.
- **Level:** Permission level of the user. More levels can be added later.
	- 0 = User
	- 1 = Manager

### Products
Products are headphones and other accessories that are being sold in the website.
- **id:** An unique identification number, that is automatically incremented.
- **name:** The name of the product.
- **brand:** The brand of the product.
- **in_stock:** Numeric value that shows how many are available to order from that product
- **img:** A path that shows the location of and image of the product
- **category:** The main category of the product. 

### Address
Users certain addresses are stored in this table, which enables ordering without registration.
Both shipping and billing address is stored here.
- **id:** Unique number used for identification
- **country:** The country of the address.
- **post_code:** Different countries have different postal code format, so this field is not validated.
- **city:** The city of the address. 
- **street:** The street name.
- **house:** House number with all necessary other information (floor, door, building, etc.)
- **note:** Additional information about the shipping or the order.

### Order
Customers orders will be stored here with all the necessary information for shipping.
It does not contain the items the customer ordered. The Items will be stored in a separate helper table.
- **id:** Unique identification number for each order
- **user_id:** The identification number of the user who made the order
- **billing_address:** The identification number of the billing address that are stored in the address table
- **shipping address:** The identification number of the shipping address that are stored in the address table
- **status:** Marks the order to completed.
- **order_time:** The date and time of the order.


## 8.2 Helper tables
For some table connections additional "helper" tables are required.

### cart
There's a cart for each user and it contains the products the customer would like to order.
- **user_id:** The id of the user
- **product_id:** The id of the product
- **amount:** The amount of the product the customer would like to order.
 
### package
 This contains the items of each order.
 - **product_id:** The identification number of the product that has been ordered
 - **order id:** The identification number of the order this package belongs to
 - **amount:** Amount of the item that the package has
 
 ### Database Plan
 ![DatabasePlna](https://github.com/Ryvenay/AFP1_nagyprojekt/blob/master/doc/Figures/DatabasePlan.png)
 

# 9. Implementation plan
During the implementation we will work mainly with php, html and css codes. First steps are the database implementation with all the tables, and after that we can work on the website itself. For all the pages, the backend will be implemented first, since this website uses the database heavily and most of the website content stored there. After the backend, the frontend will be implemented using the backend data. The frontend uses bootstrap framework with the grid layout system.

# 10. Test plan

## Test methods  
  
* Database Import
* Database Reach
* Logout Reach
* Carousel Test
* Fejhallgató page Test
* Erősítő page Test
* Hangkártya page Test
* Kiegészítő page Test
* Login page Test
* Order page Test
* Add Product page Test
* Login Test
* Order Test
* Order List Test
* Product page Test
* Add Cart page Test
* Forgot password Test
* Main Page Test
* Register Page Test
* Registration Test