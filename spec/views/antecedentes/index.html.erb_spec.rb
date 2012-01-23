require 'spec_helper'

describe "antecedentes/index" do
  before(:each) do
    assign(:antecedentes, [
      stub_model(Antecedente,
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
        :traumaticos => "Traumaticos"
      ),
      stub_model(Antecedente,
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
        :traumaticos => "Traumaticos"
      )
    ])
  end

  it "renders a list of antecedentes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Traumaticos".to_s, :count => 2
  end
end
