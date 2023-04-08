require "test_helper"

class ClinicTest < ActiveSupport::TestCase

  test "name is required" do
    clinic = Clinic.new(name: nil, address: 'ffff', number: 123456, year: 2021)
    assert_not clinic.valid?
    assert_includes clinic.errors[:name], "can't be blank"
  end

  test "number is required" do
    clinic = Clinic.new(name: 'Example Clinic', address: 'ffff', number: ni, year: 2021)
    assert_not clinic.valid?
    assert_includes clinic.errors[:number], "can't be blank"
  end

  test "adress is required" do
    clinic = Clinic.new(name: 'Example Clinic', address: nil, number: 1424, year: 2021)
    assert_not clinic.valid?
    assert_includes clinic.errors[:address], "can't be blank"
  end

  test "year is required" do
    clinic = Clinic.new(name: 'Example Clinic', address: "ffff", number: 1424, year: nil)
    assert_not clinic.valid?
    assert_includes clinic.errors[:year], "can't be blank"
  end

end
