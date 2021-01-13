class Doctor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :users
  has_many :treatments
  has_many :diets
  has_many :diagnosis
  has_many :appointments
  has_many :hospitalizations 
    
end
