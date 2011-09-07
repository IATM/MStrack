require 'spec_helper'

describe "lesions/new.html.erb" do
  before(:each) do
    assign(:lesion, stub_model(Lesion,
      :laterality => "MyString",
      :shape => "MyString",
      :size => 1,
      :enhancement => "MyString",
      :type => ""
    ).as_new_record)
  end

  it "renders new lesion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lesions_path, :method => "post" do
      assert_select "input#lesion_laterality", :name => "lesion[laterality]"
      assert_select "input#lesion_shape", :name => "lesion[shape]"
      assert_select "input#lesion_size", :name => "lesion[size]"
      assert_select "input#lesion_enhancement", :name => "lesion[enhancement]"
      assert_select "input#lesion_type", :name => "lesion[type]"
    end
  end
end
