class ContactController < ApplicationController
  def contact
  end

  def request_get_in_contact
    name = params[:name]
    email = params[:email]
    phone = params[:phone]
    message = params[:message]

    if email.blank?
      flash[:alert] = I18n.t('contact.request_get_in_contact.no_email')
    else
      ContactMailer.contact_email(email, name, phone, message).deliver_now
      flash[:notice] = I18n.t('contact.request_get_in_contact.email_sent')
    end

    redirect_to root_path
  end

end
