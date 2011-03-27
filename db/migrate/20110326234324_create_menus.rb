class CreateMenus < ActiveRecord::Migration
  def self.up
    create_table :menus do |t|
      t.references :restaurante
      t.references :comida
      t.references :oferta

      t.timestamps
    end
  end

  def self.down
    drop_table :menus
  end
end
