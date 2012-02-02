class AddPatientIdToAntecedentes < ActiveRecord::Migration
  def change
    add_column :antecedentes, :patient_id, :integer

  end
end
