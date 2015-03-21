require 'test_helper'

class YujiMishimasControllerTest < ActionController::TestCase
  setup do
    @yuji_mishima = yuji_mishimas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yuji_mishimas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yuji_mishima" do
    assert_difference('YujiMishima.count') do
      post :create, yuji_mishima: { yuji1510@gmail.com: @yuji_mishima.yuji1510@gmail.com }
    end

    assert_redirected_to yuji_mishima_path(assigns(:yuji_mishima))
  end

  test "should show yuji_mishima" do
    get :show, id: @yuji_mishima
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yuji_mishima
    assert_response :success
  end

  test "should update yuji_mishima" do
    patch :update, id: @yuji_mishima, yuji_mishima: { yuji1510@gmail.com: @yuji_mishima.yuji1510@gmail.com }
    assert_redirected_to yuji_mishima_path(assigns(:yuji_mishima))
  end

  test "should destroy yuji_mishima" do
    assert_difference('YujiMishima.count', -1) do
      delete :destroy, id: @yuji_mishima
    end

    assert_redirected_to yuji_mishimas_path
  end
end
