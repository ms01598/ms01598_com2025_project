# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def contact_email
    ContactMailer.contact_email("marilia@me.com", "Marilia Sinopli", "1234567890", @message= "I will be patiently waiting for your response..." )
  end
end
