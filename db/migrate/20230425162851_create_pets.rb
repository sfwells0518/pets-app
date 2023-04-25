class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.integer :age
      t.string :breed
      t.string :color

      t.timestamps
    end
  end
end
