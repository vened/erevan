require 'test_helper'

class FeedbackTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Feedback.new.valid?
  end
end
