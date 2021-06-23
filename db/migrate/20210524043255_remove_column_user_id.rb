# frozen_string_literal: true

class RemoveColumnUserId < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :user_id
    remove_column :teachers, :user_id
  end
end
