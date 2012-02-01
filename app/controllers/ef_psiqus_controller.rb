class EfPsiqusController < ApplicationController
  before_filter :find_visit_and_patient
  before_filter :find_ef_psiqu, :only => [:show,
                                                :edit,
                                                :update,
                                                :destroy,
                                                :index]
  before_filter :authenticate_user!
  
  # GET /ef_psiqus
  # GET /ef_psiqus.json
  def index
    @ef_psiqus = EfPsiqu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ef_psiqus }
    end
  end

  # GET /ef_psiqus/1
  # GET /ef_psiqus/1.json
  def show
    @ef_psiqu = EfPsiqu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ef_psiqu }
    end
  end

  # GET /ef_psiqus/new
  # GET /ef_psiqus/new.json
  def new
    @ef_psiqu = @visit.build_ef_psiqu

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ef_psiqu }
    end
  end

  # GET /ef_psiqus/1/edit
  def edit
    @ef_psiqu = EfPsiqu.find(params[:id])
  end

  # POST /ef_psiqus
  # POST /ef_psiqus.json
  def create
    @ef_psiqu = @visit.create_ef_psiqu(params[:ef_psiqu])

    respond_to do |format|
      if @ef_psiqu.save
        format.html { redirect_to [@patient,@visit,@ef_psiqu], notice: 'Ef psiqu was successfully created.' }
        format.json { render json: @ef_psiqu, status: :created, location: @ef_psiqu }
      else
        format.html { render action: "new" }
        format.json { render json: @ef_psiqu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ef_psiqus/1
  # PUT /ef_psiqus/1.json
  def update
    @ef_psiqu = EfPsiqu.find(params[:id])

    respond_to do |format|
      if @ef_psiqu.update_attributes(params[:ef_psiqu])
        format.html { redirect_to [@patient,@visit,@ef_psiqu], notice: 'Ef psiqu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ef_psiqu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ef_psiqus/1
  # DELETE /ef_psiqus/1.json
  def destroy
    @ef_psiqu = EfPsiqu.find(params[:id])
    @ef_psiqu.destroy

    respond_to do |format|
      format.html { redirect_to ef_psiqus_url }
      format.json { head :no_content }
    end
  end
  
  private
    def find_visit_and_patient
      @visit = Visit.find(params[:visit_id])
      @patient = @visit.patient
    end
    
    def find_ef_psiqu
      @ef_psiqu = @visit.ef_psiqu
    end
end
