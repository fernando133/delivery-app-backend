class CreateViewNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :view_notifications do |t|
      t.boolean :saw
      t.references :user, foreign_key: true
      t.references :notification, foreign_key: true

      t.timestamps
    end
  end
end
