class Total < ApplicationRecord
  belongs_to :invoice, optional: true
end
