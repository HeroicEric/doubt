require "test_helper"

describe User do
  before do
    @user = FactoryGirl.build(:user)
  end

  describe "associations" do
    it "has many identities" do
      @user.must_respond_to(:identities)
    end

    it "has many CheckpointCompletions" do
      @user.must_respond_to(:checkpoint_completions)
    end
  end

  context "with valid attributes" do
    it "must be valid" do
      @user.must_be :valid?
    end
  end

  describe "validations" do
    it "requires a first name" do
      @user.first_name = nil
      @user.wont_be :valid?
    end

    it "requires a last name" do
      @user.last_name = nil
      @user.wont_be :valid?
    end

    it "requires a role" do
      @user.role = nil
      @user.wont_be :valid?
    end

    it "requires a username" do
      @user.username = nil
      @user.wont_be :valid?
    end

    describe "email" do
      it "requires an email" do
        @user.email = nil
        @user.wont_be :valid?
      end

      it "must be unique" do
        email = "hello@aol.com"
        FactoryGirl.create(:user, email: email)
        @user.email = email
        @user.wont_be :valid?
      end
    end
  end
end
