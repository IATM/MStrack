require 'spec_helper'

describe "ef_pares/edit" do
  before(:each) do
    @ef_pare = assign(:ef_pare, stub_model(EfPare,
      :visit => nil,
      :olfato_gusto => false,
      :disminucion_av => "MyString",
      :dolor_ocular => "MyString",
      :desaturacion_rojo => "MyString",
      :dpar => "MyString",
      :escotoma => "MyString",
      :disco_palido => "MyString",
      :ii_otro => "MyString",
      :diplopia => false,
      :oscilopsia => false,
      :paralisis_mirada => "MyString",
      :hipoestesias_trig => "MyString",
      :parestesias_trig => "MyString",
      :neuralgia_trig => "MyString",
      :dolor_atipico_cara => "MyString",
      :reflejo_corneano_abolido => "MyString",
      :v_compromiso_motor => "MyString",
      :vii_paralisis => "MyString",
      :vii_hemiespasmo => "MyString",
      :vertigo => false,
      :hipoacusia => "MyString",
      :acufenos => false,
      :nistagmus => "MyString",
      :test_sacudida_cefalica => false,
      :disfonia => false,
      :disfagia => false,
      :nauseoso => "MyString",
      :paralisis_velo => false,
      :desviacion_lengua => false,
      :xi_comprometido => false
    ))
  end

  it "renders the edit ef_pare form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ef_pares_path(@ef_pare), :method => "post" do
      assert_select "input#ef_pare_visit", :name => "ef_pare[visit]"
      assert_select "input#ef_pare_olfato_gusto", :name => "ef_pare[olfato_gusto]"
      assert_select "input#ef_pare_disminucion_av", :name => "ef_pare[disminucion_av]"
      assert_select "input#ef_pare_dolor_ocular", :name => "ef_pare[dolor_ocular]"
      assert_select "input#ef_pare_desaturacion_rojo", :name => "ef_pare[desaturacion_rojo]"
      assert_select "input#ef_pare_dpar", :name => "ef_pare[dpar]"
      assert_select "input#ef_pare_escotoma", :name => "ef_pare[escotoma]"
      assert_select "input#ef_pare_disco_palido", :name => "ef_pare[disco_palido]"
      assert_select "input#ef_pare_ii_otro", :name => "ef_pare[ii_otro]"
      assert_select "input#ef_pare_diplopia", :name => "ef_pare[diplopia]"
      assert_select "input#ef_pare_oscilopsia", :name => "ef_pare[oscilopsia]"
      assert_select "input#ef_pare_paralisis_mirada", :name => "ef_pare[paralisis_mirada]"
      assert_select "input#ef_pare_hipoestesias_trig", :name => "ef_pare[hipoestesias_trig]"
      assert_select "input#ef_pare_parestesias_trig", :name => "ef_pare[parestesias_trig]"
      assert_select "input#ef_pare_neuralgia_trig", :name => "ef_pare[neuralgia_trig]"
      assert_select "input#ef_pare_dolor_atipico_cara", :name => "ef_pare[dolor_atipico_cara]"
      assert_select "input#ef_pare_reflejo_corneano_abolido", :name => "ef_pare[reflejo_corneano_abolido]"
      assert_select "input#ef_pare_v_compromiso_motor", :name => "ef_pare[v_compromiso_motor]"
      assert_select "input#ef_pare_vii_paralisis", :name => "ef_pare[vii_paralisis]"
      assert_select "input#ef_pare_vii_hemiespasmo", :name => "ef_pare[vii_hemiespasmo]"
      assert_select "input#ef_pare_vertigo", :name => "ef_pare[vertigo]"
      assert_select "input#ef_pare_hipoacusia", :name => "ef_pare[hipoacusia]"
      assert_select "input#ef_pare_acufenos", :name => "ef_pare[acufenos]"
      assert_select "input#ef_pare_nistagmus", :name => "ef_pare[nistagmus]"
      assert_select "input#ef_pare_test_sacudida_cefalica", :name => "ef_pare[test_sacudida_cefalica]"
      assert_select "input#ef_pare_disfonia", :name => "ef_pare[disfonia]"
      assert_select "input#ef_pare_disfagia", :name => "ef_pare[disfagia]"
      assert_select "input#ef_pare_nauseoso", :name => "ef_pare[nauseoso]"
      assert_select "input#ef_pare_paralisis_velo", :name => "ef_pare[paralisis_velo]"
      assert_select "input#ef_pare_desviacion_lengua", :name => "ef_pare[desviacion_lengua]"
      assert_select "input#ef_pare_xi_comprometido", :name => "ef_pare[xi_comprometido]"
    end
  end
end
