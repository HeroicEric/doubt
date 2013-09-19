require "test_helper"

describe CheckpointCompletion do
  before do
    @checkpoint_completion = FactoryGirl.build(:checkpoint_completion)
  end

  describe "associations" do
    it "belongs to a user" do
      @checkpoint_completion.must_respond_to(:user)
    end

    it "belongs to a user" do
      @checkpoint_completion.must_respond_to(:user)
    end
  end

  context "with valid attributes" do
    it "must be valid" do
      @checkpoint_completion.must_be :valid?
    end
  end

  describe "validations" do
    it "requires a user" do
      @checkpoint_completion.user = nil
      @checkpoint_completion.wont_be :valid?
    end

    it "requires a checkpoint" do
      @checkpoint_completion.checkpoint = nil
      @checkpoint_completion.wont_be :valid?
    end
  end
end
