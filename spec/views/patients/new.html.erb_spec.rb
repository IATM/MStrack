require 'spec_helper'

describe "patients/new.html.erb" do
  before(:each) do
    assign(:patient, stub_model(Patient,
      :first_name => "MyString",
      :last_name => "MyString",
      :identification => "MyString",
      :sex => "MyString",
      :address_1 => "MyString",
      :address_2 => "MyString",
      :city => "MyString",
      :country => "MyString",
      :address_state => "MyString",
      :phone => "MyString",
      :mobile_phone => "MyString"
    ).as_new_record)
  end

  it "renders new patient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => patients_path, :method => "post" do
      assert_select "input#patient_first_name", :name => "patient[first_name]"
      assert_select "input#patient_last_name", :name => "patient[last_name]"
      assert_select "input#patient_identification", :name => "patient[identification]"
      assert_select "input#patient_sex", :name => "patient[sex]"
      assert_select "input#patient_address_1", :name => "patient[address_1]"
      assert_select "input#patient_address_2", :name => "patient[address_2]"
      assert_select "input#patient_city", :name => "patient[city]"
      assert_select "input#patient_country", :name => "patient[country]"
      assert_select "input#patient_address_state", :name => "patient[address_state]"
      assert_select "input#patient_phone", :name => "patient[phone]"
      assert_select "input#patient_mobile_phone", :name => "patient[mobile_phone]"
    end
  end
end
