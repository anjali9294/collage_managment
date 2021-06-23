# frozen_string_literal: true

class AddColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :teachers, :student
    add_column :students, :teacher_id, :int
  end
end
