require "test_helper"

describe CheckpointCompletion do
  subject { CheckpointCompletion.new }

  it { must have_valid(:user).when(User.new) }
  it { wont have_valid(:user).when(nil) }

  it { must have_valid(:checkpoint).when(Checkpoint.new) }
  it { wont have_valid(:checkpoint).when(nil) }

  describe "uniqueness" do
    it "can only have one completion per checkpoint, per user" do
      subject.save
      dupe_checkpoint = FactoryGirl.build(:checkpoint_completion,
        user: subject.user,
        checkpoint: subject.checkpoint)
      dupe_checkpoint.wont_be :valid?
    end
  end

  describe "associations" do
    it "belongs to a user" do
      subject.must_respond_to(:user)
    end

    it "belongs to a user" do
      subject.must_respond_to(:user)
    end
  end
end
