class CreateTipoRestaurantes < ActiveRecord::Migration
  def self.up
    create_table :tipo_restaurantes do |t|
      t.references :restaurante
      t.references :tipos_de_restaurante

      t.timestamps
    end
  end

  def self.down
    drop_table :tipo_restaurantes
  end
end
