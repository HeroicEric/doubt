require "test_helper"

describe Checkpoint do
  subject { Checkpoint.new }

  it { must have_valid(:title).when('Great Gatsby', 'Poppers Penguins') }
  it { wont have_valid(:title).when(nil, '') }

  it { must have_valid(:section).when(Section.new) }
  it { wont have_valid(:section).when(nil) }

  it { must have_valid(:body).when('A bunch of text to describe stuff') }
  it { wont have_valid(:body).when(nil, '') }

  describe "associations" do
    it "belongs to a lesson" do
      subject.must_respond_to(:section)
    end

    it "has many CheckpointCompletions" do
      subject.must_respond_to(:checkpoint_completions)
    end
  end
end
