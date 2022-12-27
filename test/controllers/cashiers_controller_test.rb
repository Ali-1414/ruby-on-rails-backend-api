require "test_helper"

class CashiersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cashier = cashiers(:one)
  end

  test "should get index" do
    get cashiers_url, as: :json
    assert_response :success
  end

  test "should create cashier" do
    assert_difference("Cashier.count") do
      post cashiers_url, params: { cashier: { Username: @cashier.Username, order_details: @cashier.order_details, order_status: @cashier.order_status, ordersList: @cashier.ordersList, password: @cashier.password, phone_number: @cashier.phone_number, user_id: @cashier.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show cashier" do
    get cashier_url(@cashier), as: :json
    assert_response :success
  end

  test "should update cashier" do
    patch cashier_url(@cashier), params: { cashier: { Username: @cashier.Username, order_details: @cashier.order_details, order_status: @cashier.order_status, ordersList: @cashier.ordersList, password: @cashier.password, phone_number: @cashier.phone_number, user_id: @cashier.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy cashier" do
    assert_difference("Cashier.count", -1) do
      delete cashier_url(@cashier), as: :json
    end

    assert_response :no_content
  end
end
