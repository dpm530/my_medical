class DiagnosesController < InheritedResources::Base

  private

    def diagnosis_params
      params.require(:diagnosis).permit()
    end

end
