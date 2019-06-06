class TreatmentPlanNotesController < ApplicationController
  before_action :set_treatment_plan_note, only: [:show, :edit, :update, :destroy]

  # GET /treatment_plan_notes
  # GET /treatment_plan_notes.json
  def index
    @treatment_plan_notes = TreatmentPlanNote.all
  end

  # GET /treatment_plan_notes/1
  # GET /treatment_plan_notes/1.json
  def show
  end

   # GET /treatment_plan_notes/new
   def new
      @users=User.all
      @patients=Patient.all
      @treatment_plan_note = TreatmentPlanNote.new
   end

   # GET /treatment_plan_notes/1/edit
   def edit
      @users=User.all
      @patients=Patient.all
   end

  # POST /treatment_plan_notes
  # POST /treatment_plan_notes.json
  def create
    @treatment_plan_note = TreatmentPlanNote.new(treatment_plan_note_params)

    respond_to do |format|
      if @treatment_plan_note.save
        format.html { redirect_to patient_path(@treatment_plan_note.patient), notice: 'Treatment plan note was successfully created.' }
        format.json { render :show, status: :created, location: @treatment_plan_note }
      else
        format.html { render :new }
        format.json { render json: @treatment_plan_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /treatment_plan_notes/1
  # PATCH/PUT /treatment_plan_notes/1.json
  def update
    respond_to do |format|
      if @treatment_plan_note.update(treatment_plan_note_params)
        format.html { redirect_to patient_path(@treatment_plan_note.patient), notice: 'Treatment plan note was successfully updated.' }
        format.json { render :show, status: :ok, location: @treatment_plan_note }
      else
        format.html { render :edit }
        format.json { render json: @treatment_plan_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /treatment_plan_notes/1
  # DELETE /treatment_plan_notes/1.json
  def destroy
    @treatment_plan_note.destroy
    respond_to do |format|
      format.html { redirect_to treatment_plan_notes_url, notice: 'Treatment plan note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treatment_plan_note
      @treatment_plan_note = TreatmentPlanNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def treatment_plan_note_params
      params.require(:treatment_plan_note).permit(:user_id, :patient_id, :date, :time, :diagnosis, :presenting_problem, :treatment_goals, :objective, :frequency, :note_type)
    end
end
