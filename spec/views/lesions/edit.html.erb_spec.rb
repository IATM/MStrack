require 'spec_helper'

describe "lesions/edit.html.erb" do
  before(:each) do
    @lesion = assign(:lesion, stub_model(Lesion,
      :laterality => "MyString",
      :shape => "MyString",
      :size => 1,
      :enhancement => "MyString",
      :type => ""
    ))
  end

  it "renders the edit lesion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lesions_path(@lesion), :method => "post" do
      assert_select "input#lesion_laterality", :name => "lesion[laterality]"
      assert_select "input#lesion_shape", :name => "lesion[shape]"
      assert_select "input#lesion_size", :name => "lesion[size]"
      assert_select "input#lesion_enhancement", :name => "lesion[enhancement]"
      assert_select "input#lesion_type", :name => "lesion[type]"
    end
  end
end
