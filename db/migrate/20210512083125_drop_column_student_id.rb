class DropColumnStudentId < ActiveRecord::Migration[6.0]
  def change
    remove_column :teachers,:student_id
  end
end
