require 'spec_helper'

describe "enfermedad_actuals/show" do
  before(:each) do
    @enfermedad_actual = assign(:enfermedad_actual, stub_model(EnfermedadActual,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Fuente Inf/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Compromiso Motor Ext Sup/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Compromiso Motor Ext Inf/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Compromiso Sens Ext Sup/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Compromiso Sens Ext Inf/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Neuritis Optica/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sind Uhtoff/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Severidad/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Recuperacion/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Certeza/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Evento Asociado/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Esteroides/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Dosis Esteroides/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
