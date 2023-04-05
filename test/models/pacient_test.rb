require "test_helper"

class PacientTest < ActiveSupport::TestCase

  test "name is required" do
    pacient = Pacient.new(name: nil, age: 30, diagnosis: 'Flu')
    assert_not pacient.valid?
    assert_includes pacient.errors[:name], "can't be blank"
  end

  test "age is required" do
    pacient = Pacient.new(name: 'John Doe', age: nil, diagnosis: 'Flu')
    assert_not pacient.valid?
    assert_includes pacient.errors[:age], "can't be blank"
  end

  test "diagnosis is required" do
    pacient = Pacient.new(name: 'John Doe', age: 30, diagnosis: nil)
    assert_not pacient.valid?
    assert_includes pacient.errors[:diagnosis], "can't be blank"
  end

  test "pacient has one appointment" do
    pacient = pacients(:one)
    appointment = appointments(:one)

    pacient.appointments << appointment

    assert_includes pacient.appointments, appointment
  end

end
