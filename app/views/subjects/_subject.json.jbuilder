json.extract! subject, :id, :subject_code, :subject_name, :subject_type, :theory_mark, :practical_mark, :created_at, :updated_at
json.url subject_url(subject, format: :json)
