class Student < ActiveRecord::Base
  attr_accessible :date_of_birth, :family_name, :given_name, :grade_point_average, :middle_name, :start_date

# a student can have many awards
has_many :awards, :dependent => :destroy

# a student can be on many courses, a course can have many students
has_and_belongs_to_many :courses

	def name
		given_name + " " + family_name
	end
end
