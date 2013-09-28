require "test_helper"

describe User do
  subject { User.new }

  it { must have_valid(:first_name).when('Eric', 'Othername') }
  it { wont have_valid(:first_name).when(nil, '') }

  it { must have_valid(:last_name).when('Kelly', 'Othername') }
  it { wont have_valid(:last_name).when(nil, '') }

  it { must have_valid(:role).when('user', 'admin') }
  it { wont have_valid(:role).when(nil, '', 'anotherrole') }

  it { must have_valid(:username).when('usErname12', 'user_name') }
  it { wont have_valid(:username).when(nil, '', '!!@#$%^') }

  describe "email" do
    it { must have_valid(:email).when('heroic@eric.com', 'guy12@aol.org') }
    it { wont have_valid(:email).when(nil, '') }

    it "must be unique" do
      email = "hello@aol.com"
      FactoryGirl.create(:user, email: email)
      subject.email = email
      subject.wont_be :valid?
    end
  end

  describe "associations" do
    it "has many identities" do
      subject.must_respond_to(:identities)
    end

    it "has many CheckpointCompletions" do
      subject.must_respond_to(:checkpoint_completions)
    end
  end
end
