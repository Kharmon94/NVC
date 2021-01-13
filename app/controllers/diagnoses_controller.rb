class DiagnosesController < InheritedResources::Base

  private

    def diagnosis_params
      params.require(:diagnosis).permit(:name, :type, :location, :stage, :user_id, :doctor_id)
    end

end
