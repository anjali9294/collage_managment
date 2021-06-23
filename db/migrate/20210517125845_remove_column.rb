# frozen_string_literal: true

class RemoveColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :teachers, :course_id
  end
end
