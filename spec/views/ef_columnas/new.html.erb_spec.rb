require 'spec_helper'

describe "ef_columnas/new" do
  before(:each) do
    assign(:ef_columna, stub_model(EfColumna,
      :estado => false,
      :signos_meningeos => false,
      :signos_radiculares => false,
      :visit => nil
    ).as_new_record)
  end

  it "renders new ef_columna form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ef_columnas_path, :method => "post" do
      assert_select "input#ef_columna_estado", :name => "ef_columna[estado]"
      assert_select "input#ef_columna_signos_meningeos", :name => "ef_columna[signos_meningeos]"
      assert_select "input#ef_columna_signos_radiculares", :name => "ef_columna[signos_radiculares]"
      assert_select "input#ef_columna_visit", :name => "ef_columna[visit]"
    end
  end
end
