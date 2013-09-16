require "test_helper"

describe Identity do
  before do
    @identity = FactoryGirl.build(:identity)
  end

  describe "associations" do
    it "belongs to a user" do
      @identity.must_respond_to(:user)
    end
  end

  context "with valid attributes" do
    it "must be valid" do
      @identity.must_be :valid?
    end
  end

  describe "validations" do
    it "requires a user" do
      @identity.user = nil
      @identity.wont_be :valid?
    end

    it "requires a uid" do
      @identity.uid= nil
      @identity.wont_be :valid?
    end

    describe "provider" do
      it "requires a provider" do
        @identity.provider = nil
        @identity.wont_be :valid?
      end

      it "allows github" do
        @identity.provider = "github"
        @identity.must_be :valid?
      end
    end
  end
end
