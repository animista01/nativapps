class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_code
      t.string :name
      t.string :observations

      t.timestamps
    end
  end
end
