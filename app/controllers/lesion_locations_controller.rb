class LesionLocationsController < ApplicationController
  before_filter :authenticate_user!
  # GET /lesion_locations
  # GET /lesion_locations.json
  def index
    @lesion_locations = LesionLocation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lesion_locations }
    end
  end

  # GET /lesion_locations/1
  # GET /lesion_locations/1.json
  def show
    @lesion_location = LesionLocation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lesion_location }
    end
  end

  # GET /lesion_locations/new
  # GET /lesion_locations/new.json
  def new
    @lesion_location = LesionLocation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lesion_location }
    end
  end

  # GET /lesion_locations/1/edit
  def edit
    @lesion_location = LesionLocation.find(params[:id])
  end

  # POST /lesion_locations
  # POST /lesion_locations.json
  def create
    @lesion_location = LesionLocation.new(params[:lesion_location])

    respond_to do |format|
      if @lesion_location.save
        format.html { redirect_to @lesion_location, notice: 'Lesion location was successfully created.' }
        format.json { render json: @lesion_location, status: :created, location: @lesion_location }
      else
        format.html { render action: "new" }
        format.json { render json: @lesion_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lesion_locations/1
  # PUT /lesion_locations/1.json
  def update
    @lesion_location = LesionLocation.find(params[:id])

    respond_to do |format|
      if @lesion_location.update_attributes(params[:lesion_location])
        format.html { redirect_to @lesion_location, notice: 'Lesion location was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @lesion_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesion_locations/1
  # DELETE /lesion_locations/1.json
  def destroy
    @lesion_location = LesionLocation.find(params[:id])
    @lesion_location.destroy

    respond_to do |format|
      format.html { redirect_to lesion_locations_url }
      format.json { head :ok }
    end
  end
end
