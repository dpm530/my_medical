class UsersController < ApplicationController

   before_action :authenticate_user!


   def index
      @to_do_list = ToDoList.new
      @users=User.all
      @patients=Patient.all
      @medications=Medication.all
      @allergies=Allergy.all
      @general_informtion=GeneralInformation.all
      @diagnoses=Diagnosis.all
      @emergency_contact=EmergencyContact.all
      @family_history=FamilyHistory.all
      @health_insurance=HealthInsurance.all

      if current_user
         @list_items=current_user.to_do_lists
      end
   end

   def show_staff
      @users=User.all
   end

end
