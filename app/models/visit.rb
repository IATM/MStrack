class Visit < ActiveRecord::Base
  belongs_to :user
  belongs_to :patient
  has_one :enfermedad_actual
  has_one :ef_columna
  has_one :ef_general
  has_one :ef_mental
  has_one :ef_psiqu
  has_one :ef_pare
end
