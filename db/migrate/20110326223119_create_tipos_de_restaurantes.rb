class CreateTiposDeRestaurantes < ActiveRecord::Migration
  def self.up
    create_table :tipos_de_restaurantes do |t|
      t.string :tipo
      t.text :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :tipos_de_restaurantes
  end
end
