class AddWebUrlColumnToEducationModel < ActiveRecord::Migration
  def change
    add_column :educations, :web_url, :string
  end
end
