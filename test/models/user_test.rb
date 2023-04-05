require "test_helper"

class UserTest < ActiveSupport::TestCase

  test "email is required" do
    user = User.new(email: nil, password: 'password')
    assert_not user.valid?
    assert_includes user.errors[:email], "can't be blank"
  end

  test "password is required" do
    user = User.new(email: 'test@example.com', password: nil)
    assert_not user.valid?
    assert_includes user.errors[:password], "can't be blank"
  end

  test "email must be unique" do
    User.create!(email: 'test@example.com', password: 'password')
    user = User.new(email: 'test@example.com', password: 'password')
    assert_not user.valid?
    assert_includes user.errors[:email], 'has already been taken'
  end

end
