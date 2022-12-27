require "test_helper"

class BuyersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buyer = buyers(:one)
  end

  test "should get index" do
    get buyers_url, as: :json
    assert_response :success
  end

  test "should create buyer" do
    assert_difference("Buyer.count") do
      post buyers_url, params: { buyer: { Buyer_Id: @buyer.Buyer_Id, Item_quantities: @buyer.Item_quantities, Username: @buyer.Username, integer: @buyer.integer, items: @buyer.items, order_details: @buyer.order_details, ordersList: @buyer.ordersList, password: @buyer.password, phone_number: @buyer.phone_number, shops: @buyer.shops, string: @buyer.string, user_id: @buyer.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show buyer" do
    get buyer_url(@buyer), as: :json
    assert_response :success
  end

  test "should update buyer" do
    patch buyer_url(@buyer), params: { buyer: { Buyer_Id: @buyer.Buyer_Id, Item_quantities: @buyer.Item_quantities, Username: @buyer.Username, integer: @buyer.integer, items: @buyer.items, order_details: @buyer.order_details, ordersList: @buyer.ordersList, password: @buyer.password, phone_number: @buyer.phone_number, shops: @buyer.shops, string: @buyer.string, user_id: @buyer.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy buyer" do
    assert_difference("Buyer.count", -1) do
      delete buyer_url(@buyer), as: :json
    end

    assert_response :no_content
  end
end
