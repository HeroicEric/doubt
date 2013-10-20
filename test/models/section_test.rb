require "test_helper"

describe Section do
  subject { Section.new }

  it { must have_valid(:title).when('Great Gatsby', 'Poppers Penguins') }
  it { wont have_valid(:title).when(nil, '') }

  it { must have_valid(:lesson).when(Lesson.new) }
  it { wont have_valid(:lesson).when(nil) }

  it { must have_valid(:description).when(nil, '', 'Learn awesome stuff') }

  describe "associations" do
    it "belongs to a lesson" do
      subject.must_respond_to(:lesson)
    end
  end
end
