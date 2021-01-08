class AddUserToDoctors < ActiveRecord::Migration[5.2]
  def change
  	add_reference :doctors, :user
  end
end
