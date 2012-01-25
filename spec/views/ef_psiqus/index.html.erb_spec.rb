require 'spec_helper'

describe "ef_psiqus/index" do
  before(:each) do
    assign(:ef_psiqus, [
      stub_model(EfPsiqu,
        :distimia_depresion => false,
        :hipertimia => false,
        :idea_delirante => false,
        :alucinaciones => "Alucinaciones",
        :visit => nil
      ),
      stub_model(EfPsiqu,
        :distimia_depresion => false,
        :hipertimia => false,
        :idea_delirante => false,
        :alucinaciones => "Alucinaciones",
        :visit => nil
      )
    ])
  end

  it "renders a list of ef_psiqus" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Alucinaciones".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
