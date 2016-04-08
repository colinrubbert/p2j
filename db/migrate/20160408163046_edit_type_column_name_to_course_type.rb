class EditTypeColumnNameToCourseType < ActiveRecord::Migration
  def change
    remove_column :educations, :type, :string
    add_column :educations, :course_type, :string
  end
end
