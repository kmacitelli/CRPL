class ChangeForeignKeyForUsers < ActiveRecord::Migration[5.2]
  def change
  	rename_column :users, :car_id_id, :car_id
  	rename_column :users, :carpool_id_id, :carpool_id
  end
end
