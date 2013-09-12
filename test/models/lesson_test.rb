require "test_helper"

describe Lesson do
  before do
    @lesson = FactoryGirl.build(:lesson)
  end

  describe "associations" do
    it "has many sections" do
      @lesson.must_respond_to(:sections)
    end
  end

  context "with valid attributes" do
    it "must be valid" do
      @lesson.must_be :valid?
    end
  end

  describe "validations" do
    it "requires a title" do
      @lesson.title = nil
      @lesson.wont_be :valid?
    end
  end
end
