class Course < ApplicationRecord
  has_many :students, dependent: :destroy
 
  validates :course_name,:course_code, presence:true ,length: {minimum:2, maximum:100}
  validates :year, presence:true 
end
