class AddColumnTeacher < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers,:course_id,:int
  end
end
