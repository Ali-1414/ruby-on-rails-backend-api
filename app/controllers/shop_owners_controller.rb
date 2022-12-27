class ShopOwnersController < ApplicationController
  before_action :set_shop_owner, only: %i[ show update destroy ]

  # GET /shop_owners
  def index
    @shop_owners = ShopOwner.all

    render json: @shop_owners
  end

  # GET /shop_owners/1
  def show
    render json: @shop_owner
  end

  # POST /shop_owners
  def create
    @shop_owner = ShopOwner.new(shop_owner_params)

    if @shop_owner.save
      render json: @shop_owner, status: :created, location: @shop_owner
    else
      render json: @shop_owner.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shop_owners/1
  def update
    if @shop_owner.update(shop_owner_params)
      render json: @shop_owner
    else
      render json: @shop_owner.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shop_owners/1
  def destroy
    @shop_owner.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop_owner
      @shop_owner = ShopOwner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shop_owner_params
      params.require(:shop_owner).permit(:Username, :password, :user_id, :phone_number, :cashier, :items, :shop_owner)
    end
end
