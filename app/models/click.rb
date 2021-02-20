class Click < ApplicationRecord
  belongs_to :user
  belongs_to :steps
  belongs_to :rows
end
