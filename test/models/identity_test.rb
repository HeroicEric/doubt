require "test_helper"

describe Identity do
  subject { Identity.new }

  it { must have_valid(:user).when(User.new) }
  it { wont have_valid(:user).when(nil) }

  it { must have_valid(:provider).when('github') }
  it { wont have_valid(:provider).when(nil, '', 'anythingelse') }

  it { must have_valid(:uid).when('12314523') }
  it { wont have_valid(:uid).when(nil, '') }

  describe "associations" do
    it "belongs to a user" do
      subject.must_respond_to(:user)
    end
  end
end
