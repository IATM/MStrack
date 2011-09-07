class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.datetime :visit_date
      t.string :ref_physician
      t.integer :user_id
      t.string :imaging_center

      t.timestamps
    end
  end
end
