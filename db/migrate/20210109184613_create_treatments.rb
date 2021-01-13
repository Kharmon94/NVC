class CreateTreatments < ActiveRecord::Migration[5.2]
  def change
    create_table :treatments do |t|
      t.string :name
      t.string :dosage
      t.text :schedule
      t.text :time
      t.references :user, foreign_key: true
      t.references :doctor, foreign_key: true

      t.timestamps
    end
  end
end
