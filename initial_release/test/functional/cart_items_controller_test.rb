require 'test_helper'

class CartItemsControllerTest < ActionController::TestCase
  def test_create_invalid
    CartItem.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    CartItem.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to root_url
  end
end
