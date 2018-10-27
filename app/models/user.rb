class User < ApplicationRecord
  belongs_to :car_id
  belongs_to :carpool_id
end
