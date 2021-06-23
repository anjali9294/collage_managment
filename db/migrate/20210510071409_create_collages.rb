# frozen_string_literal: true

class CreateCollages < ActiveRecord::Migration[6.0]
  def change
    create_table :collages, &:timestamps
  end
end
