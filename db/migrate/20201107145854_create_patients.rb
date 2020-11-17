# frozen_string_literal: true

class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.date :birth_date
      t.string :cpf

      t.timestamps
    end
  end
end
