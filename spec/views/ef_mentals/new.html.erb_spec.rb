require 'spec_helper'

describe "ef_mentals/new" do
  before(:each) do
    assign(:ef_mental, stub_model(EfMental,
      :conciencia => false,
      :atencion => false,
      :memoria => false,
      :lenguaje => "MyString",
      :visit => nil
    ).as_new_record)
  end

  it "renders new ef_mental form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ef_mentals_path, :method => "post" do
      assert_select "input#ef_mental_conciencia", :name => "ef_mental[conciencia]"
      assert_select "input#ef_mental_atencion", :name => "ef_mental[atencion]"
      assert_select "input#ef_mental_memoria", :name => "ef_mental[memoria]"
      assert_select "input#ef_mental_lenguaje", :name => "ef_mental[lenguaje]"
      assert_select "input#ef_mental_visit", :name => "ef_mental[visit]"
    end
  end
end
