require "test_helper"

class DoctorTest < ActiveSupport::TestCase

  test "name is required" do
    doctor = Doctor.new(name: nil, experience_in_years: 5, repartment_id: repartments(:one).id, specialization_id: specializations(:one).id)
    assert_not doctor.valid?
    assert_includes doctor.errors[:name], "can't be blank"
  end

  test "experience_in_years is required" do
    doctor = Doctor.new(name: 'John Doe', experience_in_years: nil, repartment_id: repartments(:one).id, specialization_id: specializations(:one).id)
    assert_not doctor.valid?
    assert_includes doctor.errors[:experience_in_years], "can't be blank"
  end

  test "repartment is required" do
    doctor = Doctor.new(name: 'John Doe', experience_in_years: 5, repartment_id: nil, specialization_id: specializations(:one).id)
    assert_not doctor.valid?
    assert_includes doctor.errors[:repartment], "must exist"
  end

  test "specialization is required" do
    doctor = Doctor.new(name: 'John Doe', experience_in_years: 5, repartment_id: repartments(:one).id, specialization_id: nil)
    assert_not doctor.valid?
    assert_includes doctor.errors[:specialization], "must exist"
  end

  test "doctor belongs to repartment" do
    repartment = repartments(:one)
    doctor = repartment.doctors.create(name: 'John Doe', experience_in_years: 5, specialization_id: specializations(:one).id)
    assert_equal doctor.repartment, repartment
  end

  test "doctor belongs to specialization" do
    specialization = specializations(:one)
    doctor = specialization.doctors.create(name: 'John Doe', experience_in_years: 5, repartment_id: repartments(:one).id)
    assert_equal doctor.specialization, specialization
  end

end
