class AntecedentesController < ApplicationController
  # GET /antecedentes
  # GET /antecedentes.json
  def index
    @antecedentes = Antecedente.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @antecedentes }
    end
  end

  # GET /antecedentes/1
  # GET /antecedentes/1.json
  def show
    @antecedente = Antecedente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @antecedente }
    end
  end

  # GET /antecedentes/new
  # GET /antecedentes/new.json
  def new
    @antecedente = Antecedente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @antecedente }
    end
  end

  # GET /antecedentes/1/edit
  def edit
    @antecedente = Antecedente.find(params[:id])
  end

  # POST /antecedentes
  # POST /antecedentes.json
  def create
    @antecedente = Antecedente.new(params[:antecedente])

    respond_to do |format|
      if @antecedente.save
        format.html { redirect_to @antecedente, notice: 'Antecedente was successfully created.' }
        format.json { render json: @antecedente, status: :created, location: @antecedente }
      else
        format.html { render action: "new" }
        format.json { render json: @antecedente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /antecedentes/1
  # PUT /antecedentes/1.json
  def update
    @antecedente = Antecedente.find(params[:id])

    respond_to do |format|
      if @antecedente.update_attributes(params[:antecedente])
        format.html { redirect_to @antecedente, notice: 'Antecedente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @antecedente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /antecedentes/1
  # DELETE /antecedentes/1.json
  def destroy
    @antecedente = Antecedente.find(params[:id])
    @antecedente.destroy

    respond_to do |format|
      format.html { redirect_to antecedentes_url }
      format.json { head :no_content }
    end
  end
end
