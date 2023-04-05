require "test_helper"

class RepartmentTest < ActiveSupport::TestCase

  test "name is required" do
    department = Department.new(name: nil, block: 'A', clinic_id: clinics(:one).id)
    assert_not department.valid?
    assert_includes department.errors[:name], "can't be blank"
  end

  test "block is required" do
    department = Department.new(name: 'Cardiology', block: nil, clinic_id: clinics(:one).id)
    assert_not department.valid?
    assert_includes department.errors[:block], "can't be blank"
  end

  test "clinic is required" do
    department = Department.new(name: 'Cardiology', block: 'A', clinic_id: nil)
    assert_not department.valid?
    assert_includes department.errors[:clinic], "must exist"
  end

  test "department belongs to clinic" do
    clinic = clinics(:one)
    department = clinic.departments.create(name: 'Cardiology', block: 'A')
    assert_equal department.clinic, clinic
  end

end
