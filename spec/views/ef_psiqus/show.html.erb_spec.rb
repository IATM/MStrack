require 'spec_helper'

describe "ef_psiqus/show" do
  before(:each) do
    @ef_psiqu = assign(:ef_psiqu, stub_model(EfPsiqu,
      :distimia_depresion => false,
      :hipertimia => false,
      :idea_delirante => false,
      :alucinaciones => "Alucinaciones",
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
    rendered.should match(/Alucinaciones/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
