class User < ApplicationRecord
    has_many :credit_card_debts, dependent: :destroy
end
