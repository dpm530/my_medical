class EmergencyContactsController < InheritedResources::Base

  private

    def emergency_contact_params
      params.require(:emergency_contact).permit()
    end

end
