class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.text :address
      t.decimal :price
      t.references :campaign

      t.timestamps
    end
    add_index :invoices, :campaign_id
  end
end
