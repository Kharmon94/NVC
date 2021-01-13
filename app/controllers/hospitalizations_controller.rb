class HospitalizationsController < InheritedResources::Base

  private

    def hospitalization_params
      params.require(:hospitalization).permit(:date, :admit, :discharge, :reasons)
    end

end
