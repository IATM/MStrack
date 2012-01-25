require 'spec_helper'

describe "ef_generals/new" do
  before(:each) do
    assign(:ef_general, stub_model(EfGeneral,
      :pa_sistolica => 1,
      :pa_diastolica => 1,
      :fc => 1,
      :peso => 1,
      :talla => 1,
      :hallazgos => "MyText",
      :visit => nil
    ).as_new_record)
  end

  it "renders new ef_general form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ef_generals_path, :method => "post" do
      assert_select "input#ef_general_pa_sistolica", :name => "ef_general[pa_sistolica]"
      assert_select "input#ef_general_pa_diastolica", :name => "ef_general[pa_diastolica]"
      assert_select "input#ef_general_fc", :name => "ef_general[fc]"
      assert_select "input#ef_general_peso", :name => "ef_general[peso]"
      assert_select "input#ef_general_talla", :name => "ef_general[talla]"
      assert_select "textarea#ef_general_hallazgos", :name => "ef_general[hallazgos]"
      assert_select "input#ef_general_visit", :name => "ef_general[visit]"
    end
  end
end
