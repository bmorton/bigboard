json.extract! @initiative, :id, :name, :start_date, :end_date, :manager_id, :analyst_id, :owner_id, :created_at, :updated_at
json.members @initiative.members, :id, :name, :image, :uid, :created_at
