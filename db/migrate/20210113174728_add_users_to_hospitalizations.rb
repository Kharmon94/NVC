class AddUsersToHospitalizations < ActiveRecord::Migration[5.2]
  def change
    add_reference :hospitalizations, :user, foreign_key: true
    add_reference :hospitalizations, :doctor, foreign_key: true
  end
end
