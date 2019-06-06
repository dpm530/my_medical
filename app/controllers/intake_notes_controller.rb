class IntakeNotesController < ApplicationController
  before_action :set_intake_note, only: [:show, :edit, :update, :destroy]

  # GET /intake_notes
  # GET /intake_notes.json
  def index
    @intake_notes = IntakeNote.all
  end

  # GET /intake_notes/1
  # GET /intake_notes/1.json
  def show
  end

   # GET /intake_notes/new
   def new
      @users=User.all
      @patients=Patient.all
      @intake_note = IntakeNote.new
   end

   # GET /intake_notes/1/edit
   def edit
      @users=User.all
      @patients=Patient.all
   end

  # POST /intake_notes
  # POST /intake_notes.json
  def create
    @intake_note = IntakeNote.new(intake_note_params)

    respond_to do |format|
      if @intake_note.save
        format.html { redirect_to patient_path(@intake_note.patient), notice: 'Intake note was successfully created.' }
        format.json { render :show, status: :created, location: @intake_note }
      else
        format.html { render :new }
        format.json { render json: @intake_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intake_notes/1
  # PATCH/PUT /intake_notes/1.json
  def update
    respond_to do |format|
      if @intake_note.update(intake_note_params)
        format.html { redirect_to patient_path(@intake_note.patient), notice: 'Intake note was successfully updated.' }
        format.json { render :show, status: :ok, location: @intake_note }
      else
        format.html { render :edit }
        format.json { render json: @intake_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intake_notes/1
  # DELETE /intake_notes/1.json
  def destroy
    @intake_note.destroy
    respond_to do |format|
      format.html { redirect_to intake_notes_url, notice: 'Intake note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intake_note
      @intake_note = IntakeNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intake_note_params
      params.require(:intake_note).permit(:user_id, :patient_id, :note_type, :presenting_problem, :current_mental_status, :safety_issues, :background, :diagnosis, :date, :time)
    end
end
