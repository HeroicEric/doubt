require "test_helper"

describe Lesson do
  subject { Lesson.new }

  it { must have_valid(:title).when('Great Gatsby', 'Poppers Penguins') }
  it { wont have_valid(:title).when(nil, '') }

  describe "associations" do
    it "has many sections" do
      subject.must_respond_to(:sections)
    end

    it "has many checkpoints" do
      subject.must_respond_to(:checkpoints)
    end

    it "has many checkpoint completions" do
      subject.must_respond_to(:checkpoint_completions)
    end
  end
end
