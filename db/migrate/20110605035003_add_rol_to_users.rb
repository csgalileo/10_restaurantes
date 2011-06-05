class AddRolToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :rol, :string
  end

  def self.down
    remove_column :users, :rol
  end
end
