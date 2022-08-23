class ContactsController < ApplicationController
  def new
  
  end
  
  def create
    message = Contact.new(contact_params)    
    if message.save
    else
      render 'new'
    end
    
  end
  
  private
  
  def contact_params
    params.permit(:email, :message)
  end

end
