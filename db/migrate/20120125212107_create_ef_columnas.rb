class CreateEfColumnas < ActiveRecord::Migration
  def change
    create_table :ef_columnas do |t|
      t.boolean :estado
      t.boolean :signos_meningeos
      t.boolean :signos_radiculares
      t.references :visit

      t.timestamps
    end
    add_index :ef_columnas, :visit_id
  end
end
