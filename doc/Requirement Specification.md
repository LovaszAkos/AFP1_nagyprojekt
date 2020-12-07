# Requirement Specification


# 1. Introduction
Our team is a small, but ambitious web developer team that aims to achieve the highest heights. The team consists of four trustworthy, young developers, who are eagerly helping out each other and solve problems together. Our main profile is highly dynamic, database-driven websites, especially webshops. We mainly use the Laravel framework, however, we are flexible with our technologies.

# 2. Current State
Our company is a small retail store in Eger, Hungary, where we sell high quality headphones and headphone accessories. We've been existing for the past 3 years only as a local store near the city center, where customers can try and purchase from a wide variety of headphone gear. During these years our team have been continuously expanding their knowledge about headphones and audio gear to the point of expertise. In the past few months we started to gain more and more customers and since us being the only headphone retail store in the region most of our customers are travelling here from far away to purchase our products. Because of this, we would like to improve and extend our business and as a part of it, have an online website where we can satisfy our customers who live farther away as well.

# 3. Scope
Our vision is to have an online website, where we can sell our products to our customers without them having to travel to our shop. On this website they can browse all of our products in store and see their technical details. After choosing their desired product, they have the option to purchase it on the website. After that, our team can see the order on the website, and manage it. The shipping process then can be done manually by one of our employees. Besides that, we would like to have a user management system too where our customers can register, fill out their personal information like their name and shipping address, and they can purchase with their account more easily.

# 4. Functional Requirements
You can read more in the "Request list" section about the functional requirements. Our current and requested business contains some more information about that as well.

# 5. Standards & Laws
## General Standards:
Application must meet the following general standards:

1.  Must be easily understandable and easy to use for the users.
2.  Must function in a logical manner for the users.
3.  Must use the industry best practices.
4.  Must use styles that are consistent throughout the application and within the associated Web site, including:

-   Error messages must appear in a consistent location and style.
-   Form controls that are not available must be hidden.


## Browser requirements:
-   Mozilla Firefox
-   Microsoft Edge
-   Google Chrome
-   Internet Explorer

## Online shop regulations
**Definitions:**

1.  The seller - Headphone shop
2.  Customer- An individual who is at least 14 years old, in case he/she is not 18 yet the consent of his/her legal representative is required. / A legal person or organization unit.
3.  Online store / Shop / Webshop -Internet service available at (_-not yet clarified-_) through which a customer can purchase goods from the seller.
4.  Goods - Movable items presented in the online shop.
5.  Regulations - Rules of the online shop.

**General provisions:**

1.  Online shop is run by the seller.
2.  The regulations define the rules for the conclusion between the seller and the customer contracts for the sale of goods by means of distance communication and use by customers of the online store.
3.  Information about the price given in the online store is binding from the moment of receipt of the e-mails. After successful submission of the order, this price will not change regardless of changes in the prices in the store, which may arise in relation to particular goods.
4.  Photos of the goods are placed in the online store for exemplary purposes only and are specifically indicated in the presentation of the goods.
5.  Prerequisite for a successful placing an order, is to provide accurate and real data at registration as well as at the Order Page.

**The scope of the terms and conditions of use the online shop:**

1.  To use the service provided by the online store, the customer need to cognize these rules and accept them.
2.  The provided information in the registration form and Order Page should be truthful and current. If the customer provides incorrect or outdated information, in particular as regards to the personal data of the customer, the seller is not obliged to carry out orders. It is prohibited to transfer or make available by the customer illegal content or infringe the rights of third parties.
3.  Seller shall take the necessary technical and organizational measures to prevent acquisition and modification data provided by the customer during registration and when ordering by unauthorized users.

**Placing an order:**

1.  Orders for goods available in the online shop are made through the Order Page, available in the store.
2.  Placing an order through Order Page is possible around the clock, every day of the week. Orders placed on weekdays will be implemented on an ongoing basis. Orders placed on Saturdays, Ssundays and holidays will be implemented no earlier than the next business day.
3.  An order shall be made by logging in to the store, addition of the goods to the shopping cart and confirmation of the order. In the absence of the customer registration in the online shop placing an order is not possible.
4.  Sending the order by the customer constitutes an offer submitted by the customer to the seller to enter into a contract of sale, in accordance with the regulations.
5.  After sending the order the customer receives confirmation of acceptance of his offer by electronic means (confirmation of the order), at the e-mail address indicated by the customer. After receiving above-mentioned acceptance agreement of sale is valid.


## Privacy and Cookie Policy
Obligation to EU privacy laws, it is our responsibility to inform users about how we handle their personal data. For this reason we will provide a Privacy Policy and a Cookie Policy for users to read. In the functional specification it will be explained in details.


# 6. Current Business Model
The team is currently listening a lot of music in multiple platforms. Because of it we made the choice that we need to start a webshop in order to satisfy the people's demands. This webshop will show the best headsets and headphones for different music genres.  Right now, we are able to work very well as a team because we have been created a website and managed it correctly.
This time the project aims to extend the functionalities of the client company by providing a fully functional online webshop.

Before the release of the webshop, we will be searching for different headphones and look at their description to classify. For example, there are rare ones which are hard to find in the store.
In the current situation, when the CoVid-19 is spreading and infecting people, we need to stay at home. To prevent people from the virus, we will create a webshop, which will be connected directly to the product storage, where the customers can find headsets and headphones they need, so they don't have to go to the store. That means every order will be shipped right from the webshop, which makes it easier to save people.

Furthermore, ordering an item online is much more convenient than taking any form of public transportation to get to the store, not even mentioning the pollution that cars or any type of public transportation vehicle can cause to the atmosphere, and also you don't need to spend hours to get to the store, trying to find the headphone you wanted, especially if tihs day is one of the weekend days, you need to deal with the crowd everywhere in the city, and actually in this time you can't b with your loved ones or  you can't just relax at home.
Ordering from home is not just convenient but also protects the environment, and protect your nerves from becoming too angry about the lots of people all around the city. That is the main reason the website shall be created and help to make the customers' lives so much easier.

# 7. Requested Business Model
-Customers must have an internet connection in order to connect to the website and use it without any disruption.

-Being a registered user is necessary for online purchases.

-Database connection has to be set and fully functional.

-Users have to use a 16:9 pc monitor for the best experience but other aspect rations can be used too.

-Users have to be logged in in order to reach the profile page

-Admins can add, they can delete or modify the items on the webshop.

-Admins can set discounts to certain headsets and headphones for limited time.

# 8. Request List

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
|Pages|P5|Order page|0.1|Certain users can delete posts |
|Profile & Pages|PRP1|Profile page|0.1|Users can view profiles|
|Profile|PR1|Edit profile|0.1|User can edit their profile|
