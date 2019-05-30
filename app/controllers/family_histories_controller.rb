class FamilyHistoriesController < ApplicationController
  before_action :set_family_history, only: [:show, :edit, :update, :destroy]

  # GET /family_histories
  # GET /family_histories.json
  def index
    @family_histories = FamilyHistory.all
  end

  # GET /family_histories/1
  # GET /family_histories/1.json
  def show
  end

   # GET /family_histories/new
   def new
      @patients=Patient.all
      @family_history = FamilyHistory.new
   end

   # GET /family_histories/1/edit
   def edit
      @patients=Patient.all
   end

  # POST /family_histories
  # POST /family_histories.json
  def create
    @family_history = FamilyHistory.new(family_history_params)

    respond_to do |format|
      if @family_history.save
        format.html { redirect_to patient_path(@family_history.patient), notice: 'Family history was successfully created.' }
        format.json { render :show, status: :created, location: @family_history }
      else
        format.html { render :new }
        format.json { render json: @family_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /family_histories/1
  # PATCH/PUT /family_histories/1.json
  def update
    respond_to do |format|
      if @family_history.update(family_history_params)
        format.html { redirect_to patient_path(@family_history.patient), notice: 'Family history was successfully updated.' }
        format.json { render :show, status: :ok, location: @family_history }
      else
        format.html { render :edit }
        format.json { render json: @family_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /family_histories/1
  # DELETE /family_histories/1.json
  def destroy
    @family_history.destroy
    respond_to do |format|
      format.html { redirect_to family_histories_url, notice: 'Family history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_family_history
      @family_history = FamilyHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def family_history_params
      params.require(:family_history).permit(:first_name, :last_name, :relationship, :dob, :dod, :medical_history, :patient_id)
    end
end
