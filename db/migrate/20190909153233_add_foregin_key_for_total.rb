class AddForeginKeyForTotal < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :totals, :invoices, index: true, foreign_key: true
  end
end
