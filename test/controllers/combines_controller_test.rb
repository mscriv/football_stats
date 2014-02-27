require 'test_helper'

class CombinesControllerTest < ActionController::TestCase
  setup do
    @combine = combines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:combines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create combine" do
    assert_difference('Combine.count') do
      post :create, combine: { _40_yd_dash: @combine._40_yd_dash, bench_press: @combine.bench_press, college: @combine.college, name: @combine.name, position: @combine.position, vertical_jump: @combine.vertical_jump }
    end

    assert_redirected_to combine_path(assigns(:combine))
  end

  test "should show combine" do
    get :show, id: @combine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @combine
    assert_response :success
  end

  test "should update combine" do
    patch :update, id: @combine, combine: { _40_yd_dash: @combine._40_yd_dash, bench_press: @combine.bench_press, college: @combine.college, name: @combine.name, position: @combine.position, vertical_jump: @combine.vertical_jump }
    assert_redirected_to combine_path(assigns(:combine))
  end

  test "should destroy combine" do
    assert_difference('Combine.count', -1) do
      delete :destroy, id: @combine
    end

    assert_redirected_to combines_path
  end
end
