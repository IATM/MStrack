class CreateEfMentals < ActiveRecord::Migration
  def change
    create_table :ef_mentals do |t|
      t.boolean :conciencia
      t.boolean :atencion
      t.boolean :memoria
      t.string :lenguaje
      t.references :visit

      t.timestamps
    end
    add_index :ef_mentals, :visit_id
  end
end
