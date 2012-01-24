require 'spec_helper'

describe "enfermedad_actuals/edit" do
  before(:each) do
    @enfermedad_actual = assign(:enfermedad_actual, stub_model(EnfermedadActual,
      :fuente_inf => "MyString",
      :duracion => 1,
      :descripcion_semiol => "MyText",
      :dificultad_caminar => false,
      :compromiso_motor_ext_sup => "MyString",
      :compromiso_motor_ext_inf => "MyString",
      :compromiso_motor_facial => false,
      :compromiso_sens_ext_sup => "MyString",
      :compromiso_sens_ext_inf => "MyString",
      :compromiso_sens_tronco => false,
      :compromiso_sens_lhermitte => false,
      :disfuncion_intest_vesical => false,
      :disfuncion_sexual => false,
      :trastorno_oculomotor => false,
      :trastorno_vestib_coclear => false,
      :trastorno_lenguaje_deglucion => false,
      :neuritis_optica => "MyString",
      :disfuncion_cognitiva => false,
      :sintomas_psiquiatricos => false,
      :fatiga => false,
      :sind_uhtoff => "MyString",
      :otros => false,
      :severidad => "MyString",
      :recuperacion => "MyString",
      :certeza => "MyString",
      :evento_asociado => "MyString",
      :dias_hospitalizacion => 1,
      :esteroides => "MyString",
      :dosis_esteroides => "MyString",
      :observaciones => "MyText"
    ))
  end

  it "renders the edit enfermedad_actual form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => enfermedad_actuals_path(@enfermedad_actual), :method => "post" do
      assert_select "input#enfermedad_actual_fuente_inf", :name => "enfermedad_actual[fuente_inf]"
      assert_select "input#enfermedad_actual_duracion", :name => "enfermedad_actual[duracion]"
      assert_select "textarea#enfermedad_actual_descripcion_semiol", :name => "enfermedad_actual[descripcion_semiol]"
      assert_select "input#enfermedad_actual_dificultad_caminar", :name => "enfermedad_actual[dificultad_caminar]"
      assert_select "input#enfermedad_actual_compromiso_motor_ext_sup", :name => "enfermedad_actual[compromiso_motor_ext_sup]"
      assert_select "input#enfermedad_actual_compromiso_motor_ext_inf", :name => "enfermedad_actual[compromiso_motor_ext_inf]"
      assert_select "input#enfermedad_actual_compromiso_motor_facial", :name => "enfermedad_actual[compromiso_motor_facial]"
      assert_select "input#enfermedad_actual_compromiso_sens_ext_sup", :name => "enfermedad_actual[compromiso_sens_ext_sup]"
      assert_select "input#enfermedad_actual_compromiso_sens_ext_inf", :name => "enfermedad_actual[compromiso_sens_ext_inf]"
      assert_select "input#enfermedad_actual_compromiso_sens_tronco", :name => "enfermedad_actual[compromiso_sens_tronco]"
      assert_select "input#enfermedad_actual_compromiso_sens_lhermitte", :name => "enfermedad_actual[compromiso_sens_lhermitte]"
      assert_select "input#enfermedad_actual_disfuncion_intest_vesical", :name => "enfermedad_actual[disfuncion_intest_vesical]"
      assert_select "input#enfermedad_actual_disfuncion_sexual", :name => "enfermedad_actual[disfuncion_sexual]"
      assert_select "input#enfermedad_actual_trastorno_oculomotor", :name => "enfermedad_actual[trastorno_oculomotor]"
      assert_select "input#enfermedad_actual_trastorno_vestib_coclear", :name => "enfermedad_actual[trastorno_vestib_coclear]"
      assert_select "input#enfermedad_actual_trastorno_lenguaje_deglucion", :name => "enfermedad_actual[trastorno_lenguaje_deglucion]"
      assert_select "input#enfermedad_actual_neuritis_optica", :name => "enfermedad_actual[neuritis_optica]"
      assert_select "input#enfermedad_actual_disfuncion_cognitiva", :name => "enfermedad_actual[disfuncion_cognitiva]"
      assert_select "input#enfermedad_actual_sintomas_psiquiatricos", :name => "enfermedad_actual[sintomas_psiquiatricos]"
      assert_select "input#enfermedad_actual_fatiga", :name => "enfermedad_actual[fatiga]"
      assert_select "input#enfermedad_actual_sind_uhtoff", :name => "enfermedad_actual[sind_uhtoff]"
      assert_select "input#enfermedad_actual_otros", :name => "enfermedad_actual[otros]"
      assert_select "input#enfermedad_actual_severidad", :name => "enfermedad_actual[severidad]"
      assert_select "input#enfermedad_actual_recuperacion", :name => "enfermedad_actual[recuperacion]"
      assert_select "input#enfermedad_actual_certeza", :name => "enfermedad_actual[certeza]"
      assert_select "input#enfermedad_actual_evento_asociado", :name => "enfermedad_actual[evento_asociado]"
      assert_select "input#enfermedad_actual_dias_hospitalizacion", :name => "enfermedad_actual[dias_hospitalizacion]"
      assert_select "input#enfermedad_actual_esteroides", :name => "enfermedad_actual[esteroides]"
      assert_select "input#enfermedad_actual_dosis_esteroides", :name => "enfermedad_actual[dosis_esteroides]"
      assert_select "textarea#enfermedad_actual_observaciones", :name => "enfermedad_actual[observaciones]"
    end
  end
end
