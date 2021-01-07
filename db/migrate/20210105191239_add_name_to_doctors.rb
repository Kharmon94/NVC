class AddNameToDoctors < ActiveRecord::Migration[5.2]
  def change
    add_column :doctors, :first_name, :string
    add_column :doctors, :last_name, :string
    add_column :doctors, :street_address, :string
    add_column :doctors, :city, :string
    add_column :doctors, :zipcode, :string
    add_column :doctors, :country, :string
    add_column :doctors, :bio, :text
  end
end
