class CreateAntecedentes < ActiveRecord::Migration
  def change
    create_table :antecedentes do |t|
      t.string :patologicos
      t.string :autoinmunes
      t.string :neurologicos
      t.string :psiquiatricos
      t.string :quirurgicos
      t.integer :gineco_g
      t.integer :gineco_p
      t.integer :gineco_c
      t.integer :gineco_a
      t.integer :gineco_e
      t.integer :gineco_v
      t.string :gineco_anticoncepcion
      t.string :toxicos
      t.string :adicciones
      t.string :alergicos
      t.string :vacunas_recientes
      t.string :traumaticos

      t.timestamps
    end
  end
end
