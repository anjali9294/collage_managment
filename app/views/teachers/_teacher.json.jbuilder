json.extract! teacher, :id, :teacher_id, :teacher_name, :state, :city, :qualification, :email, :contact, :experience, :date_of_birth, :gender,:student_id, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
