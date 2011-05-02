class CreateRestauranteUsers < ActiveRecord::Migration
  def self.up
    create_table :restaurante_users do |t|
      t.references :user
      t.references :restaurante

      t.timestamps
    end
  end

  def self.down
    drop_table :restaurante_users
  end
end
