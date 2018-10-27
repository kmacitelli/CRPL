class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :color
      t.string :model
      t.references :user_id, foreign_key: true
      t.references :carpool_id, foreign_key: true

      t.timestamps
    end
  end
end
