# frozen_string_literal: true

class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :subject_code
      t.string :subject_name
      t.string :subject_type
      t.integer :theory_mark
      t.integer :practical_mark

      t.timestamps
    end
  end
end
