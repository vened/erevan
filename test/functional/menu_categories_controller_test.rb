require 'test_helper'

class MenuCategoriesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => MenuCategory.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    MenuCategory.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    MenuCategory.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to menu_category_url(assigns(:menu_category))
  end

  def test_edit
    get :edit, :id => MenuCategory.first
    assert_template 'edit'
  end

  def test_update_invalid
    MenuCategory.any_instance.stubs(:valid?).returns(false)
    put :update, :id => MenuCategory.first
    assert_template 'edit'
  end

  def test_update_valid
    MenuCategory.any_instance.stubs(:valid?).returns(true)
    put :update, :id => MenuCategory.first
    assert_redirected_to menu_category_url(assigns(:menu_category))
  end

  def test_destroy
    menu_category = MenuCategory.first
    delete :destroy, :id => menu_category
    assert_redirected_to menu_categories_url
    assert !MenuCategory.exists?(menu_category.id)
  end
end
