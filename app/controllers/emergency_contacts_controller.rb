class EmergencyContactsController < ApplicationController
  before_action :set_emergency_contact, only: [:show, :edit, :update, :destroy]

  # GET /emergency_contacts
  # GET /emergency_contacts.json
  def index
    @emergency_contacts = EmergencyContact.all
  end

  # GET /emergency_contacts/1
  # GET /emergency_contacts/1.json
  def show
  end

   # GET /emergency_contacts/new
   def new
      @patients=Patient.all
      @emergency_contact = EmergencyContact.new
   end

   # GET /emergency_contacts/1/edit
   def edit
      @patients=Patient.all
   end

  # POST /emergency_contacts
  # POST /emergency_contacts.json
  def create
    @emergency_contact = EmergencyContact.new(emergency_contact_params)

    respond_to do |format|
      if @emergency_contact.save
        format.html { redirect_to patient_path(@emergency_contact.patient), notice: 'Emergency contact was successfully created.' }
        format.json { render :show, status: :created, location: @emergency_contact }
      else
        format.html { render :new }
        format.json { render json: @emergency_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emergency_contacts/1
  # PATCH/PUT /emergency_contacts/1.json
  def update
    respond_to do |format|
      if @emergency_contact.update(emergency_contact_params)
        format.html { redirect_to patient_path(@emergency_contact.patient), notice: 'Emergency contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @emergency_contact }
      else
        format.html { render :edit }
        format.json { render json: @emergency_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emergency_contacts/1
  # DELETE /emergency_contacts/1.json
  def destroy
    @emergency_contact.destroy
    respond_to do |format|
      format.html { redirect_to emergency_contacts_url, notice: 'Emergency contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emergency_contact
      @emergency_contact = EmergencyContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emergency_contact_params
      params.require(:emergency_contact).permit(:first_name, :last_name, :relationship, :phone1, :phone2, :email, :address_line_1, :address_line_2, :city, :state, :zipcode, :note, :patient_id)
    end
end
