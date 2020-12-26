class ContactsController < ApplicationController
  skip_before_action :verify_authenticity_token 
  def show
  end

  def contact_us
    @contact = Contact.new(permitted_params)
    respond_to do |format|   
      if @contact.save
        ContactMailer.with(contact: @contact).contact_us.deliver_later
        format.html { redirect_to contact_url, notice: 'Message sent! Thank you for contacting us.' }   
      else
        flash.keep[:errors] = @contact.errors.full_messages
        format.html { redirect_to contact_url } 
      end 
    end
  end

  private
    def permitted_params
      params.permit(:first_name, :last_name, :email, :phone_number, :message)
    end
end
