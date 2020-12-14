require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should return contact email" do
    mail = ContactMailer.contact_email("marilia@email.com", "Marilia", "1234567890", @message = "hello")
    assert_equal ['info@mymusiccollection.com'], mail.to
    assert_equal ['from@example.com'], mail.from

  end

end
