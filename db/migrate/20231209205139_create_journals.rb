# frozen_string_literal: true

class CreateJournals < ActiveRecord::Migration[7.0]
  def change
    create_table :journals, id: :uuid do |t|
      t.string :title,    null: false
      t.string :kind,     null: false
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
