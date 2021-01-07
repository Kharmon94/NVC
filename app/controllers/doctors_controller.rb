class DoctorsController < ApplicationController

 before_action :authenticate_user!, only: [:create, :update]

 


  private

  def Doctors_params
    params.require(:doctor).permit(:email,
                                 # :avatar,
                                 :first_name,
                                 :last_name,
                                 :street_address,
                                 :city,
                                 :zipcode,
                                 :country,
                                 :bio
                                )
  end

end