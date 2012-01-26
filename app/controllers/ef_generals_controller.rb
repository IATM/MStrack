class EfGeneralsController < ApplicationController
  # GET /ef_generals
  # GET /ef_generals.json
  def index
    @ef_generals = EfGeneral.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ef_generals }
    end
  end

  # GET /ef_generals/1
  # GET /ef_generals/1.json
  def show
    @ef_general = EfGeneral.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ef_general }
    end
  end

  # GET /ef_generals/new
  # GET /ef_generals/new.json
  def new
    @ef_general = EfGeneral.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ef_general }
    end
  end

  # GET /ef_generals/1/edit
  def edit
    @ef_general = EfGeneral.find(params[:id])
  end

  # POST /ef_generals
  # POST /ef_generals.json
  def create
    @ef_general = EfGeneral.new(params[:ef_general])

    respond_to do |format|
      if @ef_general.save
        format.html { redirect_to @ef_general, notice: 'Ef general was successfully created.' }
        format.json { render json: @ef_general, status: :created, location: @ef_general }
      else
        format.html { render action: "new" }
        format.json { render json: @ef_general.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ef_generals/1
  # PUT /ef_generals/1.json
  def update
    @ef_general = EfGeneral.find(params[:id])

    respond_to do |format|
      if @ef_general.update_attributes(params[:ef_general])
        format.html { redirect_to @ef_general, notice: 'Ef general was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ef_general.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ef_generals/1
  # DELETE /ef_generals/1.json
  def destroy
    @ef_general = EfGeneral.find(params[:id])
    @ef_general.destroy

    respond_to do |format|
      format.html { redirect_to ef_generals_url }
      format.json { head :no_content }
    end
  end
end
