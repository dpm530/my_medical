class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  # GET /patients
  # GET /patients.json
  def index
    @patients = current_user.patients
  end

   # GET /patients/1
   # GET /patients/1.json
   def show
      @patient=Patient.find(params[:id])
      @medication=@patient.medication
      @allergy=@patient.allergy
      @general_information=@patient.general_information
      @diagnosis=@patient.diagnosis
      @emergency_contact=@patient.emergency_contact
      @family_history=@patient.family_history
      @health_insurance=@patient.health_insurance

      @notes=[]
      @progress_notes=@patient.progress_notes
      @progress_notes.each{|n| @notes<< n}

      @intake_notes=@patient.intake_notes
      @intake_notes.each{|n| @notes<< n}

      @treatment_plan_notes=@patient.treatment_plan_notes
      @treatment_plan_notes.each{|n| @notes<< n}


   end

   # GET /patients/new
   def new
      @users=User.all
      @patient = Patient.new
   end

   # GET /patients/1/edit
   def edit
      @users=User.all
   end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, notice: 'Patient was successfully created.' }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url, notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:first_name, :last_name, :phone, :email, :address_line_1, :address_line_2, :city, :state, :zipcode, :dob, :employer, :occupation, :sex, :user_id)
    end
end
