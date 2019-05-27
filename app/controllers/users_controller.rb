class UsersController < ApplicationController

   def index
      @patients=Patient.all
      @medications=Medication.all
      @allergies=Allergy.all
   end

end
