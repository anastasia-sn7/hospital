require "test_helper"

class SpecializationTest < ActiveSupport::TestCase
  test "name is required" do
    specialization = Specialization.new(name: nil)
    assert_not specialization.valid?
    assert_includes specialization.errors[:name], "can't be blank"
  end
end
