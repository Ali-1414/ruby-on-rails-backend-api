class CashiersController < ApplicationController
  before_action :set_cashier, only: %i[ show update destroy ]

  # GET /cashiers
  def index
    @cashiers = Cashier.all

    render json: @cashiers
  end

  # GET /cashiers/1
  def show
    render json: @cashier
  end

  # POST /cashiers
  def create
    @cashier = Cashier.new(cashier_params)

    if @cashier.save
      render json: @cashier, status: :created, location: @cashier
    else
      render json: @cashier.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cashiers/1
  def update
    if @cashier.update(cashier_params)
      render json: @cashier
    else
      render json: @cashier.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cashiers/1
  def destroy
    @cashier.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cashier
      @cashier = Cashier.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cashier_params
      params.require(:cashier).permit(:Username, :password, :user_id, :phone_number, :ordersList, :order_details, :order_status)
    end
end
