require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "should create user" do
    user = User.new do |u|
      u.username = 'test_username'
      u.email = 'email@example.com'
      u.first_name = 'First_name'
      u.last_name = 'Last_name'
    end

    assert user.save, true
  end

  test "should invalid email" do
    user = User.new do |u|
      u.username = 'username'
      u.email = 'email'
    end

    user.save
    messages = user.errors.messages

    assert_not_empty messages[:email]
  end
end
