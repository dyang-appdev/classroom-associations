# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ApplicationRecord
  
  has_many :courses, :through => :enrollments
  has_many :departments, :through => :courses
  has_many :enrollments
  
end
