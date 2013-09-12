require "test_helper"

describe Checkpoint do
  before do
    @checkpoint = FactoryGirl.build(:checkpoint)
  end

  describe "associations" do
    it "belongs to a lesson" do
      @checkpoint.must_respond_to(:section)
    end
  end

  context "with valid attributes" do
    it "must be valid" do
      @checkpoint.must_be :valid?
    end
  end

  describe "validations" do
    it "requires a title" do
      @checkpoint.title = nil
      @checkpoint.wont_be :valid?
    end

    it "requires a section" do
      @checkpoint.section = nil
      @checkpoint.wont_be :valid?
    end

    it "requires content" do
      @checkpoint.content = nil
      @checkpoint.wont_be :valid?
    end
  end
end
