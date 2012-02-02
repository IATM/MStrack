require 'spec_helper'

describe "ef_pares/show" do
  before(:each) do
    @ef_pare = assign(:ef_pare, stub_model(EfPare,
      :visit => nil,
      :olfato_gusto => false,
      :disminucion_av => "Disminucion Av",
      :dolor_ocular => "Dolor Ocular",
      :desaturacion_rojo => "Desaturacion Rojo",
      :dpar => "Dpar",
      :escotoma => "Escotoma",
      :disco_palido => "Disco Palido",
      :ii_otro => "Ii Otro",
      :diplopia => false,
      :oscilopsia => false,
      :paralisis_mirada => "Paralisis Mirada",
      :hipoestesias_trig => "Hipoestesias Trig",
      :parestesias_trig => "Parestesias Trig",
      :neuralgia_trig => "Neuralgia Trig",
      :dolor_atipico_cara => "Dolor Atipico Cara",
      :reflejo_corneano_abolido => "Reflejo Corneano Abolido",
      :v_compromiso_motor => "V Compromiso Motor",
      :vii_paralisis => "Vii Paralisis",
      :vii_hemiespasmo => "Vii Hemiespasmo",
      :vertigo => false,
      :hipoacusia => "Hipoacusia",
      :acufenos => false,
      :nistagmus => "Nistagmus",
      :test_sacudida_cefalica => false,
      :disfonia => false,
      :disfagia => false,
      :nauseoso => "Nauseoso",
      :paralisis_velo => false,
      :desviacion_lengua => false,
      :xi_comprometido => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Disminucion Av/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Dolor Ocular/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Desaturacion Rojo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Dpar/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Escotoma/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Disco Palido/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ii Otro/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Paralisis Mirada/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Hipoestesias Trig/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Parestesias Trig/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Neuralgia Trig/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Dolor Atipico Cara/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Reflejo Corneano Abolido/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/V Compromiso Motor/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Vii Paralisis/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Vii Hemiespasmo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Hipoacusia/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nistagmus/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nauseoso/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
