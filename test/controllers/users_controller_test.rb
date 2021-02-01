require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { below_50: @user.below_50, below_70_half: @user.below_70_half, credit_card_debt: @user.credit_card_debt, earn_less_than_min: @user.earn_less_than_min, earned_income: @user.earned_income, username: @user.username, filing_jointly: @user.filing_jointly, four01k: @user.four01k, four01k_contribution: @user.four01k_contribution, four01k_match: @user.four01k_match, leftover_money: @user.leftover_money, married_between: @user.married_between, married_max: @user.married_max, monthly_bills: @user.monthly_bills, monthly_income: @user.monthly_income, password_digest: @user.password_digest, roth_eligable: @user.roth_eligable, roth_max: @user.roth_max, single: @user.single, single_between: @user.single_between, single_max: @user.single_max } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { below_50: @user.below_50, below_70_half: @user.below_70_half, credit_card_debt: @user.credit_card_debt, earn_less_than_min: @user.earn_less_than_min, earned_income: @user.earned_income, username: @user.username, filing_jointly: @user.filing_jointly, four01k: @user.four01k, four01k_contribution: @user.four01k_contribution, four01k_match: @user.four01k_match, leftover_money: @user.leftover_money, married_between: @user.married_between, married_max: @user.married_max, monthly_bills: @user.monthly_bills, monthly_income: @user.monthly_income, password_digest: @user.password_digest, roth_eligable: @user.roth_eligable, roth_max: @user.roth_max, single: @user.single, single_between: @user.single_between, single_max: @user.single_max } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end
