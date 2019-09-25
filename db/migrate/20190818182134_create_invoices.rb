class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string :name
      t.integer :amount
      t.float :tax

      t.timestamps
    end
  end
end
