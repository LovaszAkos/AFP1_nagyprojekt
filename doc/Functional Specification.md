# 1. Current State 

We've been commissioned by an electrical gadgets shop owner, who's selling headphones and earphones, to create a website that he can use in his business, so he can reach more music enthusiasts. Our task is to develop a platform where he can showcase his products and sell them at the same time.

# 2. Scope

The goal of this project is to create a fully functional musical shop, where members can buy some musical equipment. Aside from the main function, this page has to have a user management system, which include registering new users, logging them in and out, changing password and profile details.The project contains the ordinary website elements like, registration, login system, shoping cart, laravel and database, etc. We will use for this project laravel framework.

# 3. Standards & Laws
## General Standards:
Application must meet the following general standards:

- Must be easily understandable and easy to use for the customers.
- Must function in a logical manner for the users.
- Must use the industry best practices.
- Must use styles that are consistent throughout the application and within the associated Web site, including:
- Error messages must appear in a consistent location and style.
- Form controls that are not available must be hidden.

## Browser requirements:
Web application must function and display properly in the following browser versions:

- Mozilla Firefox
- Microsoft Edge
- Google Chrome
- Internet Explorer

## Privacy and Cookie Policy
Obligation to EU privacy laws, it is our responsibility to inform users about how we handle their personal data. For this reason we will provide a Privacy Policy and a Cookie Policy for users to read. In the functional specification it will be explained in details.

# 4. Current business model
The team is currently listening a lot of music in multiple platforms. Because of it we made the choice that we need to start a webshop in order to satisfy the people's demands. This webshop will show the best headsets and headphones for different music genres.  Right now, we are able to work very well as a team because we have been created a website and managed it correctly.
This time the project aims to extend the functionalities of the client company by providing a fully functional online webshop.

Before the release of the webshop, we will be searching for different headphones and look at their description to classify. For example, there are rare ones which are hard to find in the store.
In the current situation, when the CoVid-19 is spreading and infecting people, we need to stay at home. To prevent people from the virus, we will create a webshop, which will be connected directly to the product storage, where the customers can find headsets and headphones they need, so they don't have to go to the store. That means every order will be shipped right from the webshop, which makes it easier to save people.

Furthermore, ordering an item online is much more convenient than taking any form of public trasportation to get to the store, not even mentioning the pollution that cars or any type of public trasportation vehicle can cause to the atmosphere, and also you don't need to spend hours to get to the store, trying to find the headphone you wanted, especially if tihs day is one of the weekend days, you need to deal with the crowd everywhere in the city, and actually in this time you can't bw with your loved ones or  you can't just relax at home.
Ordering from home is not just convenient but also protects the environment, and protect your nerves from becoming too angry about the lots of people all around the city. That is the main reason the website shall be created and help to make the customers' lives so much easier.
# 5. Requested Business model
-Customers must have an internet connection in order to connect to the website and use it without any disruption.

-Being a registered user is necessary for online purchases.

-Database connection has to be set and fully functional.

-Users have to use a 16:9 pc monitor for the best experience but other aspect rations can be used too.

-Users have to be logged in in order to reach the profile page

-Admins can add, they can delete or modify the items on the webshop.

-Admins can set discounts to certain headsets and headphones for limited time.

# 6. Request List
| Modul | ID | Name | V | Description |
|--------|---------|-----------|-----------|-------------|
|Database|D1|Name|0.1|Database, tables, relations|
|Authorization|A1|Log-in|0.1|User can log-in to their account|
|Authorization|A2|Register|0.1|User can register a new account|
|Authorization|A3|Log-out|0.1|User can log out from their account|
|Authorization|A4|Change pw|0.1|User can change their password|
|Pages|P1|Home page|0.1| Users automatically navigated to the home page|
|Pages|P2|Categories|0.1|Users can choose what are they searching for (headset or headphone)|
|Pages|P3|Product page|0.1|Users can view one item's description, value etc.|
|Pages|P4|Shopping cart|0.1|Contain the items the user has put in the cart|
|Pages|P5|Order page|0.1|Certain users can delete posts|
|Profile & Pages|PRP1|Profile page|0.1|Users can view profiles|
|Profile|PR1|Edit profile|0.1|User can edit their profile|

# 7. Use-Cases:

## User:
- Able to register a new account
- Able to log in to their account
- Able to log out to their account
- Able to see the home page
- Able to see the product listings by category
- Can filter through the products
- Can open a product and see it's detailed description page
- Able to add products to their cart
- Able to finish the order

## Manager:
- Has all the user privileges
- Able to add a new product
- Can modify an existing product
- Able to remove a product
- Has access to and able to see all the orders from other users
