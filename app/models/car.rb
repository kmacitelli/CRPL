class Car < ApplicationRecord
  belongs_to :user_id
  belongs_to :carpool_id
end
