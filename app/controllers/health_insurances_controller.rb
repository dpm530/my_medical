class HealthInsurancesController < InheritedResources::Base

  private

    def health_insurance_params
      params.require(:health_insurance).permit()
    end

end
