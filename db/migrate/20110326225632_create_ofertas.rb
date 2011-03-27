class CreateOfertas < ActiveRecord::Migration
  def self.up
    create_table :ofertas do |t|
      t.string :nombre
      t.text :descripcion
      t.string :imagen
      t.decimal :precio
      t.integer :status
      t.date :fecha_inicio
      t.date :fecha_muerte
      t.references :categoria_comida

      t.timestamps
    end
  end

  def self.down
    drop_table :ofertas
  end
end
