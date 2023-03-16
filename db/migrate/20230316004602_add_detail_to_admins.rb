class AddDetailToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :name, :string
    add_column :admins, :account, :string, null: false, unique: true
  end
end
