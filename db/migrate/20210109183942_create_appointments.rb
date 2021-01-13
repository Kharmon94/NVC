class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :date
      t.string :time
      t.string :location
      t.references :user, foreign_key: true
      t.references :doctor, foreign_key: true

      t.timestamps
    end
  end
end
