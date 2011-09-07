class LesionsController < ApplicationController
  before_filter :authenticate_user!
  # GET /lesions
  # GET /lesions.json
  def index
    @lesions = Lesion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lesions }
    end
  end

  # GET /lesions/1
  # GET /lesions/1.json
  def show
    @lesion = Lesion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lesion }
    end
  end

  # GET /lesions/new
  # GET /lesions/new.json
  def new
    @lesion = Lesion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lesion }
    end
  end

  # GET /lesions/1/edit
  def edit
    @lesion = Lesion.find(params[:id])
  end

  # POST /lesions
  # POST /lesions.json
  def create
    @lesion = Lesion.new(params[:lesion])

    respond_to do |format|
      if @lesion.save
        format.html { redirect_to @lesion, notice: 'Lesion was successfully created.' }
        format.json { render json: @lesion, status: :created, location: @lesion }
      else
        format.html { render action: "new" }
        format.json { render json: @lesion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lesions/1
  # PUT /lesions/1.json
  def update
    @lesion = Lesion.find(params[:id])

    respond_to do |format|
      if @lesion.update_attributes(params[:lesion])
        format.html { redirect_to @lesion, notice: 'Lesion was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @lesion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lesions/1
  # DELETE /lesions/1.json
  def destroy
    @lesion = Lesion.find(params[:id])
    @lesion.destroy

    respond_to do |format|
      format.html { redirect_to lesions_url }
      format.json { head :ok }
    end
  end
end
