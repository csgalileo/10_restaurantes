class CreateSedes < ActiveRecord::Migration
  def self.up
    create_table :sedes do |t|
      t.string :direccion
      t.string :municipio
      t.string :zona
      t.references :restaurante

      t.timestamps
    end
  end

  def self.down
    drop_table :sedes
  end
end
