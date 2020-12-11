class ApplicationMailer < ActionMailer::Base
  default to: "info@mymusiccollection.com", from: "from@example.com"
  layout 'mailer'
end
