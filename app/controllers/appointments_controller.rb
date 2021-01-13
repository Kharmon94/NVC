class AppointmentsController < InheritedResources::Base

  private

    def appointment_params
      params.require(:appointment).permit(:date, :time, :location, :user_id, :doctor_id)
    end

end
