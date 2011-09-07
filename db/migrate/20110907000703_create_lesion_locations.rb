class CreateLesionLocations < ActiveRecord::Migration
  def change
    create_table :lesion_locations do |t|
      t.string :region
      t.string :location

      t.timestamps
    end
  end
end
