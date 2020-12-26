class ContactMailer < ApplicationMailer

  default from: ENV['GMAIL_USERNAME']

  def contact_us
    @contact = params[:contact]
    mail to: 'r.samarreddy@gmail.com', subject: 'Contact Us - Got a new Mssage!'
  end
end