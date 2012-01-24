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

ActiveRecord::Schema.define(:version => 20120124005709) do

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
  end

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
