json.extract! student, :id, :roll_no, :name, :email, :contact, :date_of_birth, :gender, :state, :city, :father_name, :father_occupation, :mother_name, :mother_occupation, :course_id, :created_at, :updated_at
json.url student_url(student, format: :json)
