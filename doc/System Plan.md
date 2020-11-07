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
Backend developers are responsible for developing the server-side code, they create the website's functions, and the data structures. They mainly use PHP codes through a framework named as Laravel.

### Frontend developer:
Frontend developers implement the visual elements that users see and interact with in the website. They make sure that users have no trouble navigating the website. They use HTML, CSS, JavaScript codes.

### Database developer:
Database developers are responsible for the storage and management of the data we use in this website. Because of the newly used Laravel, it is much more comfortable and faster.

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

# 3. Business model
<p align="center"> ![Bus Model](https://github.com/Ryvenay/AFP1_nagyprojekt/blob/master/doc/Figures/Business%20Model_v1.0.png) </p>
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
- Based on PHP language combined with Laravel framework and the user's demands
  
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

# 7. Architecture plan
## 7.1 Backend
The system needs a database system, in this case the team uses a Visual Studio based client, where we store the user's datas and the products. Web Client: The client is based on PHP and Laravel technologies, which helps the client to be stable. On the other hand we can create creative and spectacular content for our users. Furthermore, it will be used to create the website's functions, handle user data and article content.

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

# 10. Test plan
