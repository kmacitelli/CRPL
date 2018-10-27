class ChangeForeignKeyForCars < ActiveRecord::Migration[5.2]
  def change
  	rename_column :cars, :user_id_id, :user_id
  	rename_column :cars, :carpool_id_id, :carpool_id
  end
end
