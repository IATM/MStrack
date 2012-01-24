require 'spec_helper'

describe "enfermedad_actuals/index" do
  before(:each) do
    assign(:enfermedad_actuals, [
      stub_model(EnfermedadActual,
        :fuente_inf => "Fuente Inf",
        :duracion => 1,
        :descripcion_semiol => "MyText",
        :dificultad_caminar => false,
        :compromiso_motor_ext_sup => "Compromiso Motor Ext Sup",
        :compromiso_motor_ext_inf => "Compromiso Motor Ext Inf",
        :compromiso_motor_facial => false,
        :compromiso_sens_ext_sup => "Compromiso Sens Ext Sup",
        :compromiso_sens_ext_inf => "Compromiso Sens Ext Inf",
        :compromiso_sens_tronco => false,
        :compromiso_sens_lhermitte => false,
        :disfuncion_intest_vesical => false,
        :disfuncion_sexual => false,
        :trastorno_oculomotor => false,
        :trastorno_vestib_coclear => false,
        :trastorno_lenguaje_deglucion => false,
        :neuritis_optica => "Neuritis Optica",
        :disfuncion_cognitiva => false,
        :sintomas_psiquiatricos => false,
        :fatiga => false,
        :sind_uhtoff => "Sind Uhtoff",
        :otros => false,
        :severidad => "Severidad",
        :recuperacion => "Recuperacion",
        :certeza => "Certeza",
        :evento_asociado => "Evento Asociado",
        :dias_hospitalizacion => 1,
        :esteroides => "Esteroides",
        :dosis_esteroides => "Dosis Esteroides",
        :observaciones => "MyText"
      ),
      stub_model(EnfermedadActual,
        :fuente_inf => "Fuente Inf",
        :duracion => 1,
        :descripcion_semiol => "MyText",
        :dificultad_caminar => false,
        :compromiso_motor_ext_sup => "Compromiso Motor Ext Sup",
        :compromiso_motor_ext_inf => "Compromiso Motor Ext Inf",
        :compromiso_motor_facial => false,
        :compromiso_sens_ext_sup => "Compromiso Sens Ext Sup",
        :compromiso_sens_ext_inf => "Compromiso Sens Ext Inf",
        :compromiso_sens_tronco => false,
        :compromiso_sens_lhermitte => false,
        :disfuncion_intest_vesical => false,
        :disfuncion_sexual => false,
        :trastorno_oculomotor => false,
        :trastorno_vestib_coclear => false,
        :trastorno_lenguaje_deglucion => false,
        :neuritis_optica => "Neuritis Optica",
        :disfuncion_cognitiva => false,
        :sintomas_psiquiatricos => false,
        :fatiga => false,
        :sind_uhtoff => "Sind Uhtoff",
        :otros => false,
        :severidad => "Severidad",
        :recuperacion => "Recuperacion",
        :certeza => "Certeza",
        :evento_asociado => "Evento Asociado",
        :dias_hospitalizacion => 1,
        :esteroides => "Esteroides",
        :dosis_esteroides => "Dosis Esteroides",
        :observaciones => "MyText"
      )
    ])
  end

  it "renders a list of enfermedad_actuals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fuente Inf".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Compromiso Motor Ext Sup".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Compromiso Motor Ext Inf".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Compromiso Sens Ext Sup".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Compromiso Sens Ext Inf".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Neuritis Optica".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sind Uhtoff".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Severidad".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Recuperacion".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Certeza".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Evento Asociado".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Esteroides".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Dosis Esteroides".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
