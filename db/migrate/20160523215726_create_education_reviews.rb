class CreateEducationReviews < ActiveRecord::Migration
  def change
    create_table :education_reviews do |t|
      t.string :title
      t.string :rating
      t.text :description

      t.integer :user_id
      t.integer :education_id


      t.timestamps null: false
    end

    add_index :education_reviews, [:user_id, :education_id]
    add_index :education_reviews, :education_id
  end
end
