class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :lastname
      t.string :gender
      t.string :course_id

      t.timestamps
    end
  end
end
