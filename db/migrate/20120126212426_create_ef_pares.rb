class CreateEfPares < ActiveRecord::Migration
  def change
    create_table :ef_pares do |t|
      t.references :visit
      t.boolean :olfato_gusto
      t.string :disminucion_av
      t.string :dolor_ocular
      t.string :desaturacion_rojo
      t.string :dpar
      t.string :escotoma
      t.string :disco_palido
      t.string :ii_otro
      t.boolean :diplopia
      t.boolean :oscilopsia
      t.string :paralisis_mirada
      t.string :hipoestesias_trig
      t.string :parestesias_trig
      t.string :neuralgia_trig
      t.string :dolor_atipico_cara
      t.string :reflejo_corneano_abolido
      t.string :v_compromiso_motor
      t.string :vii_paralisis
      t.string :vii_hemiespasmo
      t.boolean :vertigo
      t.string :hipoacusia
      t.boolean :acufenos
      t.string :nistagmus
      t.boolean :test_sacudida_cefalica
      t.boolean :disfonia
      t.boolean :disfagia
      t.string :nauseoso
      t.boolean :paralisis_velo
      t.boolean :desviacion_lengua
      t.boolean :xi_comprometido

      t.timestamps
    end
    add_index :ef_pares, :visit_id
  end
end
