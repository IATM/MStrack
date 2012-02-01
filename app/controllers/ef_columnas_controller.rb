class EfColumnasController < ApplicationController
  before_filter :find_visit_and_patient
  before_filter :find_ef_columna, :only => [:show,
                                                :edit,
                                                :update,
                                                :destroy,
                                                :index]
  before_filter :authenticate_user!
  
  # GET /ef_columnas
  # GET /ef_columnas.json
  def index
    @ef_columnas = EfColumna.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ef_columnas }
    end
  end

  # GET /ef_columnas/1
  # GET /ef_columnas/1.json
  def show
    @ef_columna = EfColumna.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ef_columna }
    end
  end

  # GET /ef_columnas/new
  # GET /ef_columnas/new.json
  def new
    @ef_columna = @visit.build_ef_columna

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ef_columna }
    end
  end

  # GET /ef_columnas/1/edit
  def edit
    @ef_columna = EfColumna.find(params[:id])
  end

  # POST /ef_columnas
  # POST /ef_columnas.json
  def create
    @ef_columna = @visit.create_ef_columna(params[:ef_columna])

    respond_to do |format|
      if @ef_columna.save
        format.html { redirect_to [@patient,@visit,@ef_columna], notice: 'Ef columna was successfully created.' }
        format.json { render json: @ef_columna, status: :created, location: @ef_columna }
      else
        format.html { render action: "new" }
        format.json { render json: @ef_columna.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ef_columnas/1
  # PUT /ef_columnas/1.json
  def update
    @ef_columna = EfColumna.find(params[:id])

    respond_to do |format|
      if @ef_columna.update_attributes(params[:ef_columna])
        format.html { redirect_to [@patient,@visit,@ef_columna], notice: 'Ef columna was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ef_columna.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ef_columnas/1
  # DELETE /ef_columnas/1.json
  def destroy
    @ef_columna = EfColumna.find(params[:id])
    @ef_columna.destroy

    respond_to do |format|
      format.html { redirect_to ef_columnas_url }
      format.json { head :no_content }
    end
  end
  
  private
    def find_visit_and_patient
      @visit = Visit.find(params[:visit_id])
      @patient = @visit.patient
    end
    
    def find_ef_columna
      @ef_columna = @visit.ef_columna
    end
end
