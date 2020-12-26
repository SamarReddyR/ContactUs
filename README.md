# Contact Us

Submits the contact us form and mails the data to 'info@ajackus.com'. And aslo support the internationalization with two languages (English and Spanish).

Application is deployed on heroku, visit https://contact-us-assignment.herokuapp.com.

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  * 2.6.6
* Rails version
  * 6.0.3.4
* Steps to run the application in local
  * Clone the code into local

    * `git clone https://github.com/SamarReddyR/ContactUs.git`
  * Install Gems

    * `bundle install`
  * Setup `config/database.yml` file with username and password in development mode as below.

    ```
    default: &default
      adapter: mysql2
      username: USERNAME
      password: PASSWORD

    development:
      <<: *default
      database: ContactUs_development
    ```
  * Create Database

    * `rake db:create`
  * Database initialization

    * `rake db:migrate`
  * Setup Environment

    * Run following commands
      * `set EDITOR=notepad`
      * `rails credentials:edit`
    * Set Config vars (change the MailID and GmailPASSWORD with valid details)
      * `GMAIL_USERNAME: MailID`
      * `GMAIL_PASSWORD: GmailPASSWORD`
    * Now save the file and close it.
  * Start Server

    * `rails s`
