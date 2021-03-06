# frozen_string_literal: true

class Creates < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :overview
      t.string :poster_url

      t.timestamps
    end
  end
end
