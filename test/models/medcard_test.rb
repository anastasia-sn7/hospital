require "test_helper"

class MedcardTest < ActiveSupport::TestCase

  def setup
    @pacient = pacients(:one)
    @clinic = clinics(:one)
  end

  test "should not save med card without name" do
    med_card = MedCard.new(year: 2022, pacient: @pacient, clinic: @clinic)
    assert_not med_card.save
  end

  test "should not save med card without year" do
    med_card = MedCard.new(name: "John Doe", pacient: @pacient, clinic: @clinic)
    assert_not med_card.save
  end

  test "should not save med card without pacient" do
    med_card = MedCard.new(name: "John Doe", year: 2022, clinic: @clinic)
    assert_not med_card.save
  end

  test "should not save med card without clinic" do
    med_card = MedCard.new(name: "John Doe", year: 2022, pacient: @pacient)
    assert_not med_card.save
  end

  test "should save valid med card" do
    med_card = MedCard.new(name: "John Doe", year: 2022, pacient: @pacient, clinic: @clinic)
    assert med_card.save
  end

  test "med card belongs to pacient and clinic" do
    med_card = MedCard.new(name: "John Doe", year: 2022, pacient: @pacient, clinic: @clinic)
    assert_equal @pacient, med_card.pacient
    assert_equal @clinic, med_card.clinic
  end

end
