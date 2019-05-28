class GeneralInformationsController < InheritedResources::Base

  private

    def general_information_params
      params.require(:general_information).permit()
    end

end
