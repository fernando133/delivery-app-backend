class CreatePromotionalCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :promotional_codes do |t|
      t.date :validUntil
      t.string :code
      t.boolean :visible?
      t.references :orders, foreign_key: true

      t.timestamps
    end
  end
end
