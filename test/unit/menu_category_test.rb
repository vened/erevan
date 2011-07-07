require 'test_helper'

class MenuCategoryTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert MenuCategory.new.valid?
  end
end
