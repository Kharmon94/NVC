class DietsController < InheritedResources::Base

  private

    def diet_params
      params.require(:diet).permit(:food, :drink, :exercise, :mental, :user_id, :doctor_id)
    end

end
