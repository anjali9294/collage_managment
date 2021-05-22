class Student < ApplicationRecord
  belongs_to :course
  belongs_to :teacher
 

  # validates :name, uniqueness: {case_sensitive: false}, presence:true ,length: { minimum: 3,maximum: 6}
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  # validates :email,presence:true,uniqueness: {case_sensitive: false},length: { maximum: 105},format: {with: VALID_EMAIL_REGEX}

end
