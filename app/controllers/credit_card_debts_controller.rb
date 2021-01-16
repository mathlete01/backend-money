class CreditCardDebtsController < ApplicationController
  before_action :set_credit_card_debt, only: [:show, :update, :destroy]

  # GET /credit_card_debts
  def index
    @credit_card_debts = CreditCardDebt.all

    render json: @credit_card_debts
  end

  # GET /credit_card_debts/1
  def show
    render json: @credit_card_debt
  end

  # POST /credit_card_debts
  def create
    @credit_card_debt = CreditCardDebt.new(credit_card_debt_params)

    if @credit_card_debt.save
      render json: @credit_card_debt, status: :created, location: @credit_card_debt
    else
      render json: @credit_card_debt.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /credit_card_debts/1
  def update
    if @credit_card_debt.update(credit_card_debt_params)
      render json: @credit_card_debt
    else
      render json: @credit_card_debt.errors, status: :unprocessable_entity
    end
  end

  # DELETE /credit_card_debts/1
  def destroy
    @credit_card_debt.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_credit_card_debt
      @credit_card_debt = CreditCardDebt.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def credit_card_debt_params
      params.require(:credit_card_debt).permit(:amount, :user_id)
    end
end
