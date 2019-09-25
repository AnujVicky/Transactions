class Invoice < ApplicationRecord
  has_one :total
  belongs_to :user
end
