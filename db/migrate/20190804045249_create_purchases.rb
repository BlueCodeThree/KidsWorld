class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.references :buyer, foreign_key: {to_table: :users}
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
