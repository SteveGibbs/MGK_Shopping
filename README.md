# MGK e-commerce website
[Click here to see live Project (hosted on Heroku)](https://mgkshopping.herokuapp.com/)

## Description
An e-commerce website inspired by boutique online watch retailer [rosefield](https://www.rosefieldwatches.com).

Project designed and deployed within four days as part of General Assembly's Web Development Immersive bootcamp (week 9 project week).

## Group members
[Steve Gibbs](https://github.com/SteveGibbs)  |  [Samit Kalra](https://github.com/skal9606)  |  [Howie Mann](https://github.com/howardmann)

## Features

#### Customer
1. Browse watches and accessories
2. Shopping cart to track items and proceed to checkout
3. Payment system to process orders
4. Email confirmation of payment invoice

#### Admin
1. Order dashboard with live polling
2. Edit product catalogue and customer orders
3. Live monitor competitor pricing
4. Admin login and authorization

## User instructions
#### Admin login details:
- Email: admin@ga.co
- Password: chicken

#### Stripe credit card payment details:
- Email: anything@email.com
- Credit card: 4242 4242 4242 4242
- Expiry: Any future date [MM/YY]
- CVC: Any three digit code

## Technology stack
- [Ruby on Rails](http://guides.rubyonrails.org/) and [PostgreSQL](https://www.postgresql.org/) for back-end build and database
- [Simple Grid](http://simplegrid.io/) CSS grid layout with mobile responsiveness
- [Stripe API](https://stripe.com/au) for credit card payments
- [SendGrid API](https://sendgrid.com/) for mailer
- [Nokogiri API](http://www.nokogiri.org/) for webscraping
- [Slick API](http://kenwheeler.github.io/slick/) for image carousels
- [Will_paginate API](https://github.com/mislav/will_paginate) for product catalogue pagination
- [jQuery](https://jquery.com/) library
- Ruby, JavaScript, HTML5 and CSS3 as programming languages
- [Heroku](https://www.heroku.com/) for cloud deployment

## New features under consideration
- **Inventory tracking**
- **Sale items**
- **Order reporting** using data visualisation tools e.g. [JS Charts](http://www.jscharts.com/)
- **Admin functionality** ability to edit order items for quantity and price
