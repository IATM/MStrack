class Visit < ActiveRecord::Base
  belongs_to :user
  belongs_to :patient
  has_one :enfermedad_actual
end
