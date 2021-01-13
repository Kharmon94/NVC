class CreateDiagnoses < ActiveRecord::Migration[5.2]
  def change
    create_table :diagnoses do |t|
      t.string :name
      t.string :type
      t.string :location
      t.string :stage
      t.references :user, foreign_key: true
      t.references :doctor, foreign_key: true

      t.timestamps
    end
  end
end
