require 'test_helper'

class FeedbacksControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Feedback.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Feedback.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Feedback.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to feedback_url(assigns(:feedback))
  end

  def test_edit
    get :edit, :id => Feedback.first
    assert_template 'edit'
  end

  def test_update_invalid
    Feedback.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Feedback.first
    assert_template 'edit'
  end

  def test_update_valid
    Feedback.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Feedback.first
    assert_redirected_to feedback_url(assigns(:feedback))
  end

  def test_destroy
    feedback = Feedback.first
    delete :destroy, :id => feedback
    assert_redirected_to feedbacks_url
    assert !Feedback.exists?(feedback.id)
  end
end
