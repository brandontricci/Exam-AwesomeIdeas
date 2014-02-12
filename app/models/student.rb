class Student < ActiveRecord::Base
  attr_accessible :birth_year, :cohort, :name, :registered, :tshirt_size
end
