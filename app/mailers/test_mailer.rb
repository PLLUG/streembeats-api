class TestMailer < ApplicationMailer
  def welcome
    @greeting = "Hi"
    mail to: "lavriv92@gmail.com"
  end
end
