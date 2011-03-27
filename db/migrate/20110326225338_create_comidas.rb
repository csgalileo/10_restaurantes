class CreateComidas < ActiveRecord::Migration
  def self.up
    create_table :comidas do |t|
      t.string :nombre
      t.text :descripcion
      t.string :imagen
      t.decimal :precio
      t.integer :status
      t.references :categoria_comida

      t.timestamps
    end
  end

  def self.down
    drop_table :comidas
  end
end
