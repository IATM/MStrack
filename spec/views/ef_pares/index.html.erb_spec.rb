require 'spec_helper'

describe "ef_pares/index" do
  before(:each) do
    assign(:ef_pares, [
      stub_model(EfPare,
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
      ),
      stub_model(EfPare,
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
      )
    ])
  end

  it "renders a list of ef_pares" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Disminucion Av".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Dolor Ocular".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Desaturacion Rojo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Dpar".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Escotoma".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Disco Palido".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ii Otro".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Paralisis Mirada".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hipoestesias Trig".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Parestesias Trig".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Neuralgia Trig".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Dolor Atipico Cara".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Reflejo Corneano Abolido".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "V Compromiso Motor".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Vii Paralisis".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Vii Hemiespasmo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hipoacusia".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nistagmus".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nauseoso".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
