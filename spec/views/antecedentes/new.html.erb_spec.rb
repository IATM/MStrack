require 'spec_helper'

describe "antecedentes/new" do
  before(:each) do
    assign(:antecedente, stub_model(Antecedente,
      :patologicos => "",
      :autoinmunes => "",
      :neurologicos => "",
      :psiquiatricos => "",
      :quirurgicos => "",
      :gineco_g => "",
      :gineco_p => "",
      :gineco_c => "",
      :gineco_a => "",
      :gineco_e => "",
      :gineco_v => "",
      :gineco_anticoncepcion => "",
      :toxicos => "",
      :adicciones => "",
      :alergicos => "",
      :vacunas_recientes => "",
      :traumaticos => "MyString"
    ).as_new_record)
  end

  it "renders new antecedente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => antecedentes_path, :method => "post" do
      assert_select "input#antecedente_patologicos", :name => "antecedente[patologicos]"
      assert_select "input#antecedente_autoinmunes", :name => "antecedente[autoinmunes]"
      assert_select "input#antecedente_neurologicos", :name => "antecedente[neurologicos]"
      assert_select "input#antecedente_psiquiatricos", :name => "antecedente[psiquiatricos]"
      assert_select "input#antecedente_quirurgicos", :name => "antecedente[quirurgicos]"
      assert_select "input#antecedente_gineco_g", :name => "antecedente[gineco_g]"
      assert_select "input#antecedente_gineco_p", :name => "antecedente[gineco_p]"
      assert_select "input#antecedente_gineco_c", :name => "antecedente[gineco_c]"
      assert_select "input#antecedente_gineco_a", :name => "antecedente[gineco_a]"
      assert_select "input#antecedente_gineco_e", :name => "antecedente[gineco_e]"
      assert_select "input#antecedente_gineco_v", :name => "antecedente[gineco_v]"
      assert_select "input#antecedente_gineco_anticoncepcion", :name => "antecedente[gineco_anticoncepcion]"
      assert_select "input#antecedente_toxicos", :name => "antecedente[toxicos]"
      assert_select "input#antecedente_adicciones", :name => "antecedente[adicciones]"
      assert_select "input#antecedente_alergicos", :name => "antecedente[alergicos]"
      assert_select "input#antecedente_vacunas_recientes", :name => "antecedente[vacunas_recientes]"
      assert_select "input#antecedente_traumaticos", :name => "antecedente[traumaticos]"
    end
  end
end
