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

describe LesionLocationsController do

  # This should return the minimal set of attributes required to create a valid
  # LesionLocation. As you add validations to LesionLocation, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all lesion_locations as @lesion_locations" do
      lesion_location = LesionLocation.create! valid_attributes
      get :index
      assigns(:lesion_locations).should eq([lesion_location])
    end
  end

  describe "GET show" do
    it "assigns the requested lesion_location as @lesion_location" do
      lesion_location = LesionLocation.create! valid_attributes
      get :show, :id => lesion_location.id.to_s
      assigns(:lesion_location).should eq(lesion_location)
    end
  end

  describe "GET new" do
    it "assigns a new lesion_location as @lesion_location" do
      get :new
      assigns(:lesion_location).should be_a_new(LesionLocation)
    end
  end

  describe "GET edit" do
    it "assigns the requested lesion_location as @lesion_location" do
      lesion_location = LesionLocation.create! valid_attributes
      get :edit, :id => lesion_location.id.to_s
      assigns(:lesion_location).should eq(lesion_location)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new LesionLocation" do
        expect {
          post :create, :lesion_location => valid_attributes
        }.to change(LesionLocation, :count).by(1)
      end

      it "assigns a newly created lesion_location as @lesion_location" do
        post :create, :lesion_location => valid_attributes
        assigns(:lesion_location).should be_a(LesionLocation)
        assigns(:lesion_location).should be_persisted
      end

      it "redirects to the created lesion_location" do
        post :create, :lesion_location => valid_attributes
        response.should redirect_to(LesionLocation.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved lesion_location as @lesion_location" do
        # Trigger the behavior that occurs when invalid params are submitted
        LesionLocation.any_instance.stub(:save).and_return(false)
        post :create, :lesion_location => {}
        assigns(:lesion_location).should be_a_new(LesionLocation)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        LesionLocation.any_instance.stub(:save).and_return(false)
        post :create, :lesion_location => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested lesion_location" do
        lesion_location = LesionLocation.create! valid_attributes
        # Assuming there are no other lesion_locations in the database, this
        # specifies that the LesionLocation created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        LesionLocation.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => lesion_location.id, :lesion_location => {'these' => 'params'}
      end

      it "assigns the requested lesion_location as @lesion_location" do
        lesion_location = LesionLocation.create! valid_attributes
        put :update, :id => lesion_location.id, :lesion_location => valid_attributes
        assigns(:lesion_location).should eq(lesion_location)
      end

      it "redirects to the lesion_location" do
        lesion_location = LesionLocation.create! valid_attributes
        put :update, :id => lesion_location.id, :lesion_location => valid_attributes
        response.should redirect_to(lesion_location)
      end
    end

    describe "with invalid params" do
      it "assigns the lesion_location as @lesion_location" do
        lesion_location = LesionLocation.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LesionLocation.any_instance.stub(:save).and_return(false)
        put :update, :id => lesion_location.id.to_s, :lesion_location => {}
        assigns(:lesion_location).should eq(lesion_location)
      end

      it "re-renders the 'edit' template" do
        lesion_location = LesionLocation.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LesionLocation.any_instance.stub(:save).and_return(false)
        put :update, :id => lesion_location.id.to_s, :lesion_location => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested lesion_location" do
      lesion_location = LesionLocation.create! valid_attributes
      expect {
        delete :destroy, :id => lesion_location.id.to_s
      }.to change(LesionLocation, :count).by(-1)
    end

    it "redirects to the lesion_locations list" do
      lesion_location = LesionLocation.create! valid_attributes
      delete :destroy, :id => lesion_location.id.to_s
      response.should redirect_to(lesion_locations_url)
    end
  end

end