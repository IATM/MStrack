require 'spec_helper'

describe "visits/new.html.erb" do
  before(:each) do
    assign(:visit, stub_model(Visit,
      :ref_physician => "MyString",
      :user_id => 1,
      :imaging_center => "MyString"
    ).as_new_record)
  end

  it "renders new visit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => visits_path, :method => "post" do
      assert_select "input#visit_ref_physician", :name => "visit[ref_physician]"
      assert_select "input#visit_user_id", :name => "visit[user_id]"
      assert_select "input#visit_imaging_center", :name => "visit[imaging_center]"
    end
  end
end
