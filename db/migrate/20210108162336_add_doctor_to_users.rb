class AddDoctorToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_reference :users, :doctors
  end
end
