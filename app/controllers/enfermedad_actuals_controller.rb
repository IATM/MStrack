class EnfermedadActualsController < ApplicationController
  before_filter :find_visit_and_patient
  before_filter :find_enfermedad_actual, :only => [:show,
                                                :edit,
                                                :update,
                                                :destroy,
                                                :index]
  
  # GET /enfermedad_actuals
  # GET /enfermedad_actuals.json
  def index
    #@enfermedad_actuals = EnfermedadActual.all
    #@enfermedad_actual = @visit.enfermedad_actual

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @enfermedad_actuals }
    end
  end

  # GET /enfermedad_actuals/1
  # GET /enfermedad_actuals/1.json
  def show
    @enfermedad_actual = EnfermedadActual.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @enfermedad_actual }
    end
  end

  # GET /enfermedad_actuals/new
  # GET /enfermedad_actuals/new.json
  def new
    @enfermedad_actual = @visit.build_enfermedad_actual

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @enfermedad_actual }
    end
  end

  # GET /enfermedad_actuals/1/edit
  def edit
    @enfermedad_actual = EnfermedadActual.find(params[:id])
  end

  # POST /enfermedad_actuals
  # POST /enfermedad_actuals.json
  def create
    @enfermedad_actual = @visit.create_enfermedad_actual(params[:enfermedad_actual])

    respond_to do |format|
      if @enfermedad_actual.save
        format.html { redirect_to [@patient,@visit,@enfermedad_actual], notice: 'Enfermedad actual was successfully created.' }
        format.json { render json: @enfermedad_actual, status: :created, location: @enfermedad_actual }
      else
        format.html { render action: "new" }
        format.json { render json: @enfermedad_actual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /enfermedad_actuals/1
  # PUT /enfermedad_actuals/1.json
  def update
    @enfermedad_actual = EnfermedadActual.find(params[:id])

    respond_to do |format|
      if @enfermedad_actual.update_attributes(params[:enfermedad_actual])
        format.html { redirect_to [@patient,@visit,@enfermedad_actual], notice: 'Enfermedad actual was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @enfermedad_actual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enfermedad_actuals/1
  # DELETE /enfermedad_actuals/1.json
  def destroy
    @enfermedad_actual = EnfermedadActual.find(params[:id])
    @enfermedad_actual.destroy

    respond_to do |format|
      format.html { redirect_to enfermedad_actuals_url }
      format.json { head :no_content }
    end
  end
  
  private
    def find_visit_and_patient
      @visit = Visit.find(params[:visit_id])
      @patient = @visit.patient
    end
    
    def find_enfermedad_actual
      @enfermedad_actual = @visit.enfermedad_actual
    end
  
end
