class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|

      t.string :category
      t.string :sub_category
      t.string :web_url
      t.string :title
      t.text :description
      t.boolean :is_affiliate, default: false, null: false

      t.timestamps null: false
    end
  end
end
