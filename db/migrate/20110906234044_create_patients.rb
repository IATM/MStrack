class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :identification
      t.string :sex
      t.date :birthdate
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :country
      t.string :address_state
      t.string :phone
      t.string :mobile_phone

      t.timestamps
    end
  end
end
