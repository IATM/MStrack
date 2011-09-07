class CreateLesions < ActiveRecord::Migration
  def change
    create_table :lesions do |t|
      t.string :laterality
      t.string :shape
      t.integer :size
      t.string :enhancement
      t.string :type

      t.timestamps
    end
  end
end
