class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.integer :teacher_id
      t.string :teacher_name
      t.string :state
      t.string :city
      t.string :qualification
      t.string :email
      t.integer :contact
      t.integer :experience
      t.date :date_of_birth
      t.string :gender
      t.references :collage, null: false, foreign_key: true

      t.timestamps
    end
  end
end
