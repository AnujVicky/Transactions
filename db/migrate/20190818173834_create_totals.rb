class CreateTotals < ActiveRecord::Migration[5.2]
  def change
    create_table :totals do |t|
      t.integer :total_invoices
      t.string :total_amount

      t.timestamps
    end
  end
end
