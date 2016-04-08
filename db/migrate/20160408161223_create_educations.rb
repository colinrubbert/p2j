class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|

      t.string :name
      t.text :description
      t.string :type
      t.string :category
      t.string :location
      t.string :language

      t.timestamps null: false
    end
  end
end
