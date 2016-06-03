class CreateApprenticeships < ActiveRecord::Migration
  def change
    create_table :apprenticeships do |t|

      t.string :name
      t.text :description
      t.string :web_url
      t.string :category
      t.string :location
      t.string :language
      t.string :logo_location
      t.boolean :paid, null: false, default: false
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
