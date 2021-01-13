class CreateDiets < ActiveRecord::Migration[5.2]
  def change
    create_table :diets do |t|
      t.text :food
      t.text :drink
      t.text :exercise
      t.text :mental
      t.references :user, foreign_key: true
      t.references :doctor, foreign_key: true

      t.timestamps
    end
  end
end
