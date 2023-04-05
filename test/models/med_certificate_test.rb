require "test_helper"

class MedCertificateTest < ActiveSupport::TestCase

  def setup
    @doctor = doctors(:one)
    @pacient = pacients(:one)
  end

  test "should not save med sertificate without doctor" do
    med_sertificate = MedSertificate.new(pacient: @pacient)
    assert_not med_sertificate.save
  end

  test "should not save med sertificate without pacient" do
    med_sertificate = MedSertificate.new(doctor: @doctor)
    assert_not med_sertificate.save
  end

  test "should save valid med sertificate" do
    med_sertificate = MedSertificate.new(doctor: @doctor, pacient: @pacient)
    assert med_sertificate.save
  end

  test "med sertificate belongs to doctor and pacient" do
    med_sertificate = MedSertificate.new(doctor: @doctor, pacient: @pacient)
    assert_equal @doctor, med_sertificate.doctor
    assert_equal @pacient, med_sertificate.pacient
  end

end
