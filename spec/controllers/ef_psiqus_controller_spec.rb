require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe EfPsiqusController do

  # This should return the minimal set of attributes required to create a valid
  # EfPsiqu. As you add validations to EfPsiqu, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EfPsiqusController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all ef_psiqus as @ef_psiqus" do
      ef_psiqu = EfPsiqu.create! valid_attributes
      get :index, {}, valid_session
      assigns(:ef_psiqus).should eq([ef_psiqu])
    end
  end

  describe "GET show" do
    it "assigns the requested ef_psiqu as @ef_psiqu" do
      ef_psiqu = EfPsiqu.create! valid_attributes
      get :show, {:id => ef_psiqu.to_param}, valid_session
      assigns(:ef_psiqu).should eq(ef_psiqu)
    end
  end

  describe "GET new" do
    it "assigns a new ef_psiqu as @ef_psiqu" do
      get :new, {}, valid_session
      assigns(:ef_psiqu).should be_a_new(EfPsiqu)
    end
  end

  describe "GET edit" do
    it "assigns the requested ef_psiqu as @ef_psiqu" do
      ef_psiqu = EfPsiqu.create! valid_attributes
      get :edit, {:id => ef_psiqu.to_param}, valid_session
      assigns(:ef_psiqu).should eq(ef_psiqu)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new EfPsiqu" do
        expect {
          post :create, {:ef_psiqu => valid_attributes}, valid_session
        }.to change(EfPsiqu, :count).by(1)
      end

      it "assigns a newly created ef_psiqu as @ef_psiqu" do
        post :create, {:ef_psiqu => valid_attributes}, valid_session
        assigns(:ef_psiqu).should be_a(EfPsiqu)
        assigns(:ef_psiqu).should be_persisted
      end

      it "redirects to the created ef_psiqu" do
        post :create, {:ef_psiqu => valid_attributes}, valid_session
        response.should redirect_to(EfPsiqu.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved ef_psiqu as @ef_psiqu" do
        # Trigger the behavior that occurs when invalid params are submitted
        EfPsiqu.any_instance.stub(:save).and_return(false)
        post :create, {:ef_psiqu => {}}, valid_session
        assigns(:ef_psiqu).should be_a_new(EfPsiqu)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        EfPsiqu.any_instance.stub(:save).and_return(false)
        post :create, {:ef_psiqu => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested ef_psiqu" do
        ef_psiqu = EfPsiqu.create! valid_attributes
        # Assuming there are no other ef_psiqus in the database, this
        # specifies that the EfPsiqu created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        EfPsiqu.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => ef_psiqu.to_param, :ef_psiqu => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested ef_psiqu as @ef_psiqu" do
        ef_psiqu = EfPsiqu.create! valid_attributes
        put :update, {:id => ef_psiqu.to_param, :ef_psiqu => valid_attributes}, valid_session
        assigns(:ef_psiqu).should eq(ef_psiqu)
      end

      it "redirects to the ef_psiqu" do
        ef_psiqu = EfPsiqu.create! valid_attributes
        put :update, {:id => ef_psiqu.to_param, :ef_psiqu => valid_attributes}, valid_session
        response.should redirect_to(ef_psiqu)
      end
    end

    describe "with invalid params" do
      it "assigns the ef_psiqu as @ef_psiqu" do
        ef_psiqu = EfPsiqu.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        EfPsiqu.any_instance.stub(:save).and_return(false)
        put :update, {:id => ef_psiqu.to_param, :ef_psiqu => {}}, valid_session
        assigns(:ef_psiqu).should eq(ef_psiqu)
      end

      it "re-renders the 'edit' template" do
        ef_psiqu = EfPsiqu.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        EfPsiqu.any_instance.stub(:save).and_return(false)
        put :update, {:id => ef_psiqu.to_param, :ef_psiqu => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested ef_psiqu" do
      ef_psiqu = EfPsiqu.create! valid_attributes
      expect {
        delete :destroy, {:id => ef_psiqu.to_param}, valid_session
      }.to change(EfPsiqu, :count).by(-1)
    end

    it "redirects to the ef_psiqus list" do
      ef_psiqu = EfPsiqu.create! valid_attributes
      delete :destroy, {:id => ef_psiqu.to_param}, valid_session
      response.should redirect_to(ef_psiqus_url)
    end
  end

end
