class CreateEfPsiqus < ActiveRecord::Migration
  def change
    create_table :ef_psiqus do |t|
      t.boolean :distimia_depresion
      t.boolean :hipertimia
      t.boolean :idea_delirante
      t.string :alucinaciones
      t.references :visit

      t.timestamps
    end
    add_index :ef_psiqus, :visit_id
  end
end
