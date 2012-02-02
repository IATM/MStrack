class EfMentalsController < ApplicationController
  before_filter :find_visit_and_patient
  before_filter :find_ef_mental, :only => [:show,
                                                :edit,
                                                :update,
                                                :destroy,
                                                :index]
  before_filter :authenticate_user!
  
  # GET /ef_mentals
  # GET /ef_mentals.json
  def index
    @ef_mentals = EfMental.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ef_mentals }
    end
  end

  # GET /ef_mentals/1
  # GET /ef_mentals/1.json
  def show
    @ef_mental = EfMental.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ef_mental }
    end
  end

  # GET /ef_mentals/new
  # GET /ef_mentals/new.json
  def new
    @ef_mental = @visit.build_ef_mental

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ef_mental }
    end
  end

  # GET /ef_mentals/1/edit
  def edit
    @ef_mental = EfMental.find(params[:id])
  end

  # POST /ef_mentals
  # POST /ef_mentals.json
  def create
    @ef_mental = @visit.create_ef_mental(params[:ef_mental])

    respond_to do |format|
      if @ef_mental.save
        format.html { redirect_to [@patient,@visit,@ef_mental], notice: 'Ef mental was successfully created.' }
        format.json { render json: @ef_mental, status: :created, location: @ef_mental }
      else
        format.html { render action: "new" }
        format.json { render json: @ef_mental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ef_mentals/1
  # PUT /ef_mentals/1.json
  def update
    @ef_mental = EfMental.find(params[:id])

    respond_to do |format|
      if @ef_mental.update_attributes(params[:ef_mental])
        format.html { redirect_to [@patient,@visit,@ef_mental], notice: 'Ef mental was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ef_mental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ef_mentals/1
  # DELETE /ef_mentals/1.json
  def destroy
    @ef_mental = EfMental.find(params[:id])
    @ef_mental.destroy

    respond_to do |format|
      format.html { redirect_to ef_mentals_url }
      format.json { head :no_content }
    end
  end
  
  private
    def find_visit_and_patient
      @visit = Visit.find(params[:visit_id])
      @patient = @visit.patient
    end
    
    def find_ef_mental
      @ef_mental = @visit.ef_mental
    end
end
