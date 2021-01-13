class CreateHospitalizations < ActiveRecord::Migration[5.2]
  def change
    create_table :hospitalizations do |t|
      t.string :date
      t.string :admit
      t.string :discharge
      t.text :reasons

      t.timestamps
    end
  end
end
