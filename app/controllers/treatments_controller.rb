class TreatmentsController < InheritedResources::Base

  private

    def treatment_params
      params.require(:treatment).permit(:name, :dosage, :schedule, :time, :user_id, :doctor_id)
    end

end
