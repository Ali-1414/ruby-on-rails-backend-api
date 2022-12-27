require "test_helper"

class ShopOwnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shop_owner = shop_owners(:one)
  end

  test "should get index" do
    get shop_owners_url, as: :json
    assert_response :success
  end

  test "should create shop_owner" do
    assert_difference("ShopOwner.count") do
      post shop_owners_url, params: { shop_owner: { Username: @shop_owner.Username, cashier: @shop_owner.cashier, items: @shop_owner.items, password: @shop_owner.password, phone_number: @shop_owner.phone_number, shop_owner: @shop_owner.shop_owner, user_id: @shop_owner.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show shop_owner" do
    get shop_owner_url(@shop_owner), as: :json
    assert_response :success
  end

  test "should update shop_owner" do
    patch shop_owner_url(@shop_owner), params: { shop_owner: { Username: @shop_owner.Username, cashier: @shop_owner.cashier, items: @shop_owner.items, password: @shop_owner.password, phone_number: @shop_owner.phone_number, shop_owner: @shop_owner.shop_owner, user_id: @shop_owner.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy shop_owner" do
    assert_difference("ShopOwner.count", -1) do
      delete shop_owner_url(@shop_owner), as: :json
    end

    assert_response :no_content
  end
end
