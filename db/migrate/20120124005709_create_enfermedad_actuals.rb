class CreateEnfermedadActuals < ActiveRecord::Migration
  def change
    create_table :enfermedad_actuals do |t|
      t.string :fuente_inf
      t.date :fecha_inicio
      t.integer :duracion
      t.text :descripcion_semiol
      t.boolean :dificultad_caminar
      t.string :compromiso_motor_ext_sup
      t.string :compromiso_motor_ext_inf
      t.boolean :compromiso_motor_facial
      t.string :compromiso_sens_ext_sup
      t.string :compromiso_sens_ext_inf
      t.boolean :compromiso_sens_tronco
      t.boolean :compromiso_sens_lhermitte
      t.boolean :disfuncion_intest_vesical
      t.boolean :disfuncion_sexual
      t.boolean :trastorno_oculomotor
      t.boolean :trastorno_vestib_coclear
      t.boolean :trastorno_lenguaje_deglucion
      t.string :neuritis_optica
      t.boolean :disfuncion_cognitiva
      t.boolean :sintomas_psiquiatricos
      t.boolean :fatiga
      t.string :sind_uhtoff
      t.boolean :otros
      t.string :severidad
      t.string :recuperacion
      t.string :certeza
      t.string :evento_asociado
      t.integer :dias_hospitalizacion
      t.string :esteroides
      t.string :dosis_esteroides
      t.text :observaciones

      t.timestamps
    end
  end
end
