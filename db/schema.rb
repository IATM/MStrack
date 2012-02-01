# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.


ActiveRecord::Schema.define(:version => 20120126212426) do

  create_table "antecedentes", :force => true do |t|
    t.string   "patologicos"
    t.string   "autoinmunes"
    t.string   "neurologicos"
    t.string   "psiquiatricos"
    t.string   "quirurgicos"
    t.integer  "gineco_g"
    t.integer  "gineco_p"
    t.integer  "gineco_c"
    t.integer  "gineco_a"
    t.integer  "gineco_e"
    t.integer  "gineco_v"
    t.string   "gineco_anticoncepcion"
    t.string   "toxicos"
    t.string   "adicciones"
    t.string   "alergicos"
    t.string   "vacunas_recientes"
    t.string   "traumaticos"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "patient_id"
  end

  create_table "ef_columnas", :force => true do |t|
    t.boolean  "estado"
    t.boolean  "signos_meningeos"
    t.boolean  "signos_radiculares"
    t.integer  "visit_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "ef_columnas", ["visit_id"], :name => "index_ef_columnas_on_visit_id"

  create_table "ef_generals", :force => true do |t|
    t.integer  "pa_sistolica"
    t.integer  "pa_diastolica"
    t.integer  "fc"
    t.integer  "peso"
    t.integer  "talla"
    t.text     "hallazgos"
    t.integer  "visit_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "ef_generals", ["visit_id"], :name => "index_ef_generals_on_visit_id"

  create_table "ef_mentals", :force => true do |t|
    t.boolean  "conciencia"
    t.boolean  "atencion"
    t.boolean  "memoria"
    t.string   "lenguaje"
    t.integer  "visit_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "ef_mentals", ["visit_id"], :name => "index_ef_mentals_on_visit_id"

  create_table "ef_pares", :force => true do |t|
    t.integer  "visit_id"
    t.boolean  "olfato_gusto"
    t.string   "disminucion_av"
    t.string   "dolor_ocular"
    t.string   "desaturacion_rojo"
    t.string   "dpar"
    t.string   "escotoma"
    t.string   "disco_palido"
    t.string   "ii_otro"
    t.boolean  "diplopia"
    t.boolean  "oscilopsia"
    t.string   "paralisis_mirada"
    t.string   "hipoestesias_trig"
    t.string   "parestesias_trig"
    t.string   "neuralgia_trig"
    t.string   "dolor_atipico_cara"
    t.string   "reflejo_corneano_abolido"
    t.string   "v_compromiso_motor"
    t.string   "vii_paralisis"
    t.string   "vii_hemiespasmo"
    t.boolean  "vertigo"
    t.string   "hipoacusia"
    t.boolean  "acufenos"
    t.string   "nistagmus"
    t.boolean  "test_sacudida_cefalica"
    t.boolean  "disfonia"
    t.boolean  "disfagia"
    t.string   "nauseoso"
    t.boolean  "paralisis_velo"
    t.boolean  "desviacion_lengua"
    t.boolean  "xi_comprometido"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "ef_pares", ["visit_id"], :name => "index_ef_pares_on_visit_id"

  create_table "ef_psiqus", :force => true do |t|
    t.boolean  "distimia_depresion"
    t.boolean  "hipertimia"
    t.boolean  "idea_delirante"
    t.string   "alucinaciones"
    t.integer  "visit_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "ef_psiqus", ["visit_id"], :name => "index_ef_psiqus_on_visit_id"

  create_table "enfermedad_actuals", :force => true do |t|
    t.string   "fuente_inf"
    t.date     "fecha_inicio"
    t.integer  "duracion"
    t.text     "descripcion_semiol"
    t.boolean  "dificultad_caminar"
    t.string   "compromiso_motor_ext_sup"
    t.string   "compromiso_motor_ext_inf"
    t.boolean  "compromiso_motor_facial"
    t.string   "compromiso_sens_ext_sup"
    t.string   "compromiso_sens_ext_inf"
    t.boolean  "compromiso_sens_tronco"
    t.boolean  "compromiso_sens_lhermitte"
    t.boolean  "disfuncion_intest_vesical"
    t.boolean  "disfuncion_sexual"
    t.boolean  "trastorno_oculomotor"
    t.boolean  "trastorno_vestib_coclear"
    t.boolean  "trastorno_lenguaje_deglucion"
    t.string   "neuritis_optica"
    t.boolean  "disfuncion_cognitiva"
    t.boolean  "sintomas_psiquiatricos"
    t.boolean  "fatiga"
    t.string   "sind_uhtoff"
    t.boolean  "otros"
    t.string   "severidad"
    t.string   "recuperacion"
    t.string   "certeza"
    t.string   "evento_asociado"
    t.integer  "dias_hospitalizacion"
    t.string   "esteroides"
    t.string   "dosis_esteroides"
    t.text     "observaciones"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "visit_id"
  end

  create_table "lesion_locations", :force => true do |t|
    t.string   "region"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lesions", :force => true do |t|
    t.string   "laterality"
    t.string   "shape"
    t.integer  "size"
    t.string   "enhancement"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patient_id"
  end

  create_table "patients", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "identification"
    t.string   "sex"
    t.date     "birthdate"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "country"
    t.string   "address_state"
    t.string   "phone"
    t.string   "mobile_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "visits", :force => true do |t|
    t.datetime "visit_date"
    t.string   "ref_physician"
    t.integer  "user_id"
    t.string   "imaging_center"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patient_id"
  end

end
