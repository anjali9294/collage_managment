# frozen_string_literal: true

class AddColumnUserId < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :user_id, :integer
    add_column :teachers, :user_id, :integer
    add_column :users, :admin, :boolean, default: false
  end
end
