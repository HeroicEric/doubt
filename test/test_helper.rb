ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/spec"
require "minitest/pride"
require "valid_attribute"

class MiniTest::Spec
  class << self
    alias :context :describe
  end
end

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  # fixtures :all

  # Add more helper methods to be used by all tests here...
  include ::ValidAttribute::Method

  def self.must(&block)
    it { subject.must instance_eval(&block) }
  end

  def self.wont(&block)
    it { subject.wont instance_eval(&block) }
  end

  def must(*args, &block)
    subject.must(*args, &block)
  end

  def wont(*args, &block)
    subject.wont(*args, &block)
  end
end
