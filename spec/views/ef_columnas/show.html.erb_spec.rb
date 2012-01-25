require 'spec_helper'

describe "ef_columnas/show" do
  before(:each) do
    @ef_columna = assign(:ef_columna, stub_model(EfColumna,
      :estado => false,
      :signos_meningeos => false,
      :signos_radiculares => false,
      :visit => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
