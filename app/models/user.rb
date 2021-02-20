class User < ApplicationRecord
  has_many :credit_card_debts, dependent: :destroy
  has_secure_password
  # has_many :rungs, dependent: :destroy
  validates :username, uniqueness: { case_sensitive: false }
end
