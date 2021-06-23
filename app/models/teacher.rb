# frozen_string_literal: true

class Teacher < ApplicationRecord
  has_many :student_teachers
  has_many :students, through: :student_teachers

  validates :teacher_name, :qualification, uniqueness: { case_sensitive: false }, presence: true, length: { minimum: 3 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 105 },
                    format: { with: VALID_EMAIL_REGEX }
end
