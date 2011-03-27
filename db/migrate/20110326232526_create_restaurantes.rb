class CreateRestaurantes < ActiveRecord::Migration
  def self.up
    create_table :restaurantes do |t|
      t.string :nombre
      t.text :informacion
      t.string :url_pedido
      t.string :logo

      t.timestamps
    end
  end

  def self.down
    drop_table :restaurantes
  end
end
