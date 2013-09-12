require "test_helper"

describe Section do
  before do
    @section = FactoryGirl.build(:section)
  end

  describe "associations" do
    it "belongs to a lesson" do
      @section.must_respond_to(:lesson)
    end
  end

  context "with valid attributes" do
    it "must be valid" do
      @section.must_be :valid?
    end
  end

  describe "validations" do
    it "requires a title" do
      @section.title = nil
      @section.wont_be :valid?
    end

    it "requires a lesson" do
      @section.lesson = nil
      @section.wont_be :valid?
    end
  end
end
