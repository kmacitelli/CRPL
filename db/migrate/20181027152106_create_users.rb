class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :homeAdr
      t.string :destAdr
      t.integer :maxDist
      t.references :car_id, foreign_key: true
      t.references :carpool_id, foreign_key: true

      t.timestamps
    end
  end
end
