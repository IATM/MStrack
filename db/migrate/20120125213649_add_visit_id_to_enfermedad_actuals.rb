class AddVisitIdToEnfermedadActuals < ActiveRecord::Migration
  def change
    add_column :enfermedad_actuals, :visit_id, :integer

  end
end
