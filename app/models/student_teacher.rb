# frozen_string_literal: true

class StudentTeacher < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
end
