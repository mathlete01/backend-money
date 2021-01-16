require 'test_helper'

class CreditCardDebtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @credit_card_debt = credit_card_debts(:one)
  end

  test "should get index" do
    get credit_card_debts_url, as: :json
    assert_response :success
  end

  test "should create credit_card_debt" do
    assert_difference('CreditCardDebt.count') do
      post credit_card_debts_url, params: { credit_card_debt: { amount: @credit_card_debt.amount, user_id: @credit_card_debt.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show credit_card_debt" do
    get credit_card_debt_url(@credit_card_debt), as: :json
    assert_response :success
  end

  test "should update credit_card_debt" do
    patch credit_card_debt_url(@credit_card_debt), params: { credit_card_debt: { amount: @credit_card_debt.amount, user_id: @credit_card_debt.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy credit_card_debt" do
    assert_difference('CreditCardDebt.count', -1) do
      delete credit_card_debt_url(@credit_card_debt), as: :json
    end

    assert_response 204
  end
end
