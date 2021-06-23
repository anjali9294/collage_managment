# frozen_string_literal: true

class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.integer :roll_no
      t.string :name
      t.string :email
      t.integer :contact
      t.date :date_of_birth
      t.string :gender
      t.string :state
      t.string :city
      t.string :father_name
      t.string :father_occupation
      t.string :mother_name
      t.string :mother_occupation
      t.references :course, null: false, foreign_key: true
      t.references :collage, null: false, foreign_key: true

      t.timestamps
    end
  end
end
