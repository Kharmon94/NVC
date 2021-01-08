class RemoveUserFromDoctors < ActiveRecord::Migration[5.2]
  def change
    remove_reference :doctors, :user, foreign_key: true
  end
end
