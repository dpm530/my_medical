class HealthInsurancesController < ApplicationController
  before_action :set_health_insurance, only: [:show, :edit, :update, :destroy]

  # GET /health_insurances
  # GET /health_insurances.json
  def index
    @health_insurances = HealthInsurance.all
  end

  # GET /health_insurances/1
  # GET /health_insurances/1.json
  def show
  end

   # GET /health_insurances/new
   def new
      @patients=Patient.all
      @health_insurance = HealthInsurance.new
   end

   # GET /health_insurances/1/edit
   def edit
      @patients=Patient.all
   end

  # POST /health_insurances
  # POST /health_insurances.json
  def create
    @health_insurance = HealthInsurance.new(health_insurance_params)

    respond_to do |format|
      if @health_insurance.save
        format.html { redirect_to patient_path(@health_insurance.patient), notice: 'Health insurance was successfully created.' }
        format.json { render :show, status: :created, location: @health_insurance }
      else
        format.html { render :new }
        format.json { render json: @health_insurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /health_insurances/1
  # PATCH/PUT /health_insurances/1.json
  def update
    respond_to do |format|
      if @health_insurance.update(health_insurance_params)
        format.html { redirect_to patient_path(@health_insurance.patient), notice: 'Health insurance was successfully updated.' }
        format.json { render :show, status: :ok, location: @health_insurance }
      else
        format.html { render :edit }
        format.json { render json: @health_insurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_insurances/1
  # DELETE /health_insurances/1.json
  def destroy
    @health_insurance.destroy
    respond_to do |format|
      format.html { redirect_to health_insurances_url, notice: 'Health insurance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_insurance
      @health_insurance = HealthInsurance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def health_insurance_params
      params.require(:health_insurance).permit(:company, :phone, :id_number, :group_number, :coverage, :copays, :patient_id)
    end
end
