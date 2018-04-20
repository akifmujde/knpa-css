json.extract! post, :id, :content, :file, :university_id, :unv_fac_id, :fac_dep_id, :dep_cour_id, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)
