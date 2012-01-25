require 'spec_helper'

describe "ef_psiqus/edit" do
  before(:each) do
    @ef_psiqu = assign(:ef_psiqu, stub_model(EfPsiqu,
      :distimia_depresion => false,
      :hipertimia => false,
      :idea_delirante => false,
      :alucinaciones => "MyString",
      :visit => nil
    ))
  end

  it "renders the edit ef_psiqu form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ef_psiqus_path(@ef_psiqu), :method => "post" do
      assert_select "input#ef_psiqu_distimia_depresion", :name => "ef_psiqu[distimia_depresion]"
      assert_select "input#ef_psiqu_hipertimia", :name => "ef_psiqu[hipertimia]"
      assert_select "input#ef_psiqu_idea_delirante", :name => "ef_psiqu[idea_delirante]"
      assert_select "input#ef_psiqu_alucinaciones", :name => "ef_psiqu[alucinaciones]"
      assert_select "input#ef_psiqu_visit", :name => "ef_psiqu[visit]"
    end
  end
end
