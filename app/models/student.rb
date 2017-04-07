class Student < ActiveRecord::Base
  attr_accessible :course_id, :gender, :lastname, :name

  belongs_to :course
end
