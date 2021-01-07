class UsersController < ApplicationController

 before_action :authenticate_user!, only: [:create, :update]

 


  private

  def user_params
    params.require(:user).permit(:email,
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