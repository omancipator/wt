require 'test_helper'

class WeightPostsControllerTest < ActionController::TestCase
  setup do
    @weight_post = weight_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weight_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weight_post" do
    assert_difference('WeightPost.count') do
      post :create, weight_post: { bmi: @weight_post.bmi, comment: @weight_post.comment, fat_per: @weight_post.fat_per, weight: @weight_post.weight, weight_date: @weight_post.weight_date }
    end

    assert_redirected_to weight_post_path(assigns(:weight_post))
  end

  test "should show weight_post" do
    get :show, id: @weight_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weight_post
    assert_response :success
  end

  test "should update weight_post" do
    patch :update, id: @weight_post, weight_post: { bmi: @weight_post.bmi, comment: @weight_post.comment, fat_per: @weight_post.fat_per, weight: @weight_post.weight, weight_date: @weight_post.weight_date }
    assert_redirected_to weight_post_path(assigns(:weight_post))
  end

  test "should destroy weight_post" do
    assert_difference('WeightPost.count', -1) do
      delete :destroy, id: @weight_post
    end

    assert_redirected_to weight_posts_path
  end
end
