class FamilyHistoriesController < InheritedResources::Base

  private

    def family_history_params
      params.require(:family_history).permit()
    end

end
