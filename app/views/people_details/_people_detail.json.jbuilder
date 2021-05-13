json.extract! people_detail, :id, :first_name, :last_name, :phone_number, :email, :created_at, :updated_at
json.url people_detail_url(people_detail, format: :json)
