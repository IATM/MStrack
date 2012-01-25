class CreateEfGenerals < ActiveRecord::Migration
  def change
    create_table :ef_generals do |t|
      t.integer :pa_sistolica
      t.integer :pa_diastolica
      t.integer :fc
      t.integer :peso
      t.integer :talla
      t.text :hallazgos
      t.references :visit

      t.timestamps
    end
    add_index :ef_generals, :visit_id
  end
end
