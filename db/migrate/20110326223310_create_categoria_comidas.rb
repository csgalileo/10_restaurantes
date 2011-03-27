class CreateCategoriaComidas < ActiveRecord::Migration
  def self.up
    create_table :categoria_comidas do |t|
      t.string :categoria
      t.text :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :categoria_comidas
  end
end
