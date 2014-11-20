class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :value
      t.references :campaign

      t.timestamps
    end
    add_index :comments, :campaign_id
  end
end
