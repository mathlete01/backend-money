class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :monthly_income, :monthly_bills, :leftover_money, :four01k, :four01k_match, :four01k_contribution, :credit_card_debt, :single, :single_max, :single_between, :earned_income, :below_50, :below_70_half, :roth_eligable, :roth_max, :filing_jointly, :married_max, :married_between, :earn_less_than_min, :monthly_spending, :four01k_max_out, :current_step, :cc_1, :cc_2, :cc_3, :pay_schedule, :magi
  # has_many :rungs
  # attributes :username
end
