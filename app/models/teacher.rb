class Teacher < ApplicationRecord
  has_many :students,dependent: :destroy
  
  # validates :teacher_name,:father_name,:mother_name,:mother_occupation,:father_occupation,:qualification uniqueness: {case_sensitive: false}, presence:true ,length: { minimum: 3,maximum: 6}
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  # validates :email,presence:true,uniqueness: {case_sensitive: false},length: { maximum: 105},format: {with: VALID_EMAIL_REGEX}
end
