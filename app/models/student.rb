class Student < ApplicationRecord
  belongs_to :course
  has_many :teachers,dependent: :destroy
end
