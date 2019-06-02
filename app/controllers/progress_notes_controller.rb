class ProgressNotesController < ApplicationController
  before_action :set_progress_note, only: [:show, :edit, :update, :destroy]

  # GET /progress_notes
  # GET /progress_notes.json
  def index
    @progress_notes = ProgressNote.all
  end

  # GET /progress_notes/1
  # GET /progress_notes/1.json
  def show
  end

   # GET /progress_notes/new
   def new
      @users=User.all
      @patients=Patient.all
      @progress_note = ProgressNote.new
   end

   # GET /progress_notes/1/edit
   def edit
      @users=User.all
      @patients=Patient.all
   end

  # POST /progress_notes
  # POST /progress_notes.json
  def create
    @progress_note = ProgressNote.new(progress_note_params)

    respond_to do |format|
      if @progress_note.save
        format.html { redirect_to patient_path(@progress_note.patient), notice: 'Progress note was successfully created.' }
        format.json { render :show, status: :created, location: @progress_note }
      else
        format.html { render :new }
        format.json { render json: @progress_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /progress_notes/1
  # PATCH/PUT /progress_notes/1.json
  def update
    respond_to do |format|
      if @progress_note.update(progress_note_params)
        format.html { redirect_to patient_path(@progress_note.patient), notice: 'Progress note was successfully updated.' }
        format.json { render :show, status: :ok, location: @progress_note }
      else
        format.html { render :edit }
        format.json { render json: @progress_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /progress_notes/1
  # DELETE /progress_notes/1.json
  def destroy
    @progress_note.destroy
    respond_to do |format|
      format.html { redirect_to progress_notes_url, notice: 'Progress note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_progress_note
      @progress_note = ProgressNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def progress_note_params
      params.require(:progress_note).permit(:user_id, :patient_id, :date, :time, :duration, :location, :mental_status, :symptoms, :dx, :prognosis, :progress_to_date, :tx_plan, :progress_note, :type)
    end
end
