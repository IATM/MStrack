class AddPatientIdToLesions < ActiveRecord::Migration
  def change
    add_column :lesions, :patient_id, :integer
  end
end
