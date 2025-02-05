class EfParesController < ApplicationController
  before_filter :find_visit_and_patient
  before_filter :find_ef_pare, :only => [:show,
                                                :edit,
                                                :update,
                                                :destroy,
                                                :index]
  before_filter :authenticate_user!
  
  # GET /ef_pares
  # GET /ef_pares.json
  def index
    @ef_pares = EfPare.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ef_pares }
    end
  end

  # GET /ef_pares/1
  # GET /ef_pares/1.json
  def show
    @ef_pare = EfPare.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ef_pare }
    end
  end

  # GET /ef_pares/new
  # GET /ef_pares/new.json
  def new
    @ef_pare = @visit.build_ef_pare

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ef_pare }
    end
  end

  # GET /ef_pares/1/edit
  def edit
    @ef_pare = EfPare.find(params[:id])
  end

  # POST /ef_pares
  # POST /ef_pares.json
  def create
    @ef_pare = @visit.create_ef_pare(params[:ef_pare])

    respond_to do |format|
      if @ef_pare.save
        format.html { redirect_to [@patient,@visit,@ef_pare], notice: 'Ef pare was successfully created.' }
        format.json { render json: @ef_pare, status: :created, location: @ef_pare }
      else
        format.html { render action: "new" }
        format.json { render json: @ef_pare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ef_pares/1
  # PUT /ef_pares/1.json
  def update
    @ef_pare = EfPare.find(params[:id])

    respond_to do |format|
      if @ef_pare.update_attributes(params[:ef_pare])
        format.html { redirect_to [@patient,@visit,@ef_pare], notice: 'Ef pare was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ef_pare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ef_pares/1
  # DELETE /ef_pares/1.json
  def destroy
    @ef_pare = EfPare.find(params[:id])
    @ef_pare.destroy

    respond_to do |format|
      format.html { redirect_to ef_pares_url }
      format.json { head :no_content }
    end
  end
  
  private
    def find_visit_and_patient
      @visit = Visit.find(params[:visit_id])
      @patient = @visit.patient
    end
    
    def find_ef_pare
     @ef_pare = @visit.ef_pare
    end
  
end
