class AddUserToSugestions < ActiveRecord::Migration[5.1]
  def change
    add_reference :sugestions, :user, foreign_key: true
  end
end
