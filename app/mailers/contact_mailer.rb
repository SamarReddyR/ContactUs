class ContactMailer < ApplicationMailer

  default from: ENV['GMAIL_USERNAME']

  def contact_us
    @contact = params[:contact]
    mail to: 'info@ajackus.com', subject: 'Contact Us - Got a new Mssage!'
  end
end