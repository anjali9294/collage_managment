# frozen_string_literal: true

class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :course_code
      t.string :course_name
      t.integer :year

      t.timestamps
    end
  end
end
