class AddLogoLocationColumn < ActiveRecord::Migration
  def change

    add_column :educations, :logo_location, :string

  end
end
