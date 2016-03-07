class AddRoleToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :integer
    add_column :users, :name, :string
    add_column :users, :lastname, :string
    add_reference :leads, :user, index: true, foreign_key: true
  end
end
