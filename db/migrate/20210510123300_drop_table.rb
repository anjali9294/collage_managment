# frozen_string_literal: true

class DropTable < ActiveRecord::Migration[6.0]
  def change
    rename_column :students, :teachers_id, :teacher_id
  end
end
