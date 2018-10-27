json.extract! user, :id, :fname, :lname, :homeAdr, :destAdr, :maxDist, :car_id_id, :carpool_id_id, :created_at, :updated_at
json.url user_url(user, format: :json)
