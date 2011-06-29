require 'test_helper'

class HomeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Home.new.valid?
  end
end
