require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "should uniqueness email and username" do
    user = User.new do |u|
      u.username = 'username'
      u.email = 'email@example.com'
    end
    user.save

    user_duplicated = User.new do |u|
      u.username = 'username'
      u.email = 'email@example.com'
    end
    user_duplicated.save
    messages = user_duplicated.errors.messages

    assert messages[:email].any?
    assert messages[:username].any?
  end

  test "should username and email not empty" do
    user = User.new
    user.save
    messages = user.errors.messages

    assert messages[:username].any?
    assert messages[:email].any?
  end

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

    assert messages[:email].any?
  end

end
