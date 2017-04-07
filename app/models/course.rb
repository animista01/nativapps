class Course < ActiveRecord::Base
  attr_accessible :course_code, :name, :observations

  has_many :students
  has_many :teachers

  validates :course_code, uniqueness: true
end
