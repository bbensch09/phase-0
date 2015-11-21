# REFLECTION
=begin
#What concepts did you review in this challenge?
 - I reviewed the concepts of inheritance and instance variables.

#What is still confusing to you about Ruby?
 - I wasn't able to get the city-level filtering to work because I ran out of time, and didn't actually create the class for the student object, which would ultimately need to exist in order to effectively create the city-level filter.

#What are you going to study to get more prepared for Phase 1?
 - I'm going to continue reviewing date & time manipulations, because the solution I found here was far more cumbersom than what I'm used to in Excel.

=end
# Introduction to Inheritance

# I worked on this challenge by myself.


# Pseudocode

#Will start with two classes, where the local cohort class inherits from the cohort class. Almost all attributes will be initially defined at the global cohort class (including name, students, p0_start_date,  immersive_start_date,  graduation_date,  email_list, and  num_of_students). City will be at the local class level, though the local class will also overwrite attributes for students, email_list, and num_students. Additionally, it will have slightly modified versions of the add & remove student methods.


# Initial Solution
=begin
require 'date'

class GlobalCohort
  attr_accessor :name, :students, :p0_start_date, :immersive_start_date, :graduation_date, :email_list, :num_of_students

  def initialize(name,year,month,day)
    @name = name
    @students = []
    @p0_start_date = Time.new(year,month,day)
    @immersive_start_date = @p0_start_date + (63 * (60*60*24))
    @graduation_date = @p0_start_date + (70 * (60*60*24))
    @email_list = ['test1@gmail.com', 'test2@gmail.com']
    @num_of_students = @students.length
  end

  def add_student(new_student)
    @students.push(new_student)
  end

  def remove_student(old_student)
    @students.delete(old_student)
  end

  def currently_in_phase
    if Time.now < @immersive_start_date
        return 'Phase 0'
      elsif Time.now < @immersive_start_date + (3 * (60*60*24))
        return 'Phase 1'
      elsif Time.now < @immersive_start_date + (6 * (60*60*24))
        return 'Phase 2'
      elsif Time.now < @immersive_start_date + (10 * (60*60*24))
        return 'Phase 3'
      else return 'Should have graduated by now.'
    end

  end

  def graduated?
    if Time.now > @graduation_date
        return 'Yes, should have graduated by now.'
      else return 'No, has not gradudated yet.'
    end
  end

end

class LocalCohort < GlobalCohort
  def initialize(global_cohort_name,city)
    @city = city
    @students = global_cohort_name.students  # ~students.collect { |x,y| y == city }
    @email_list = @email_list  #~.collect { |x,y| y == city }
    @num_of_students = @students.to_a.count
  end

  def add_student(new_student)
    @students.push(new_student)
  end

  def remove_student(old_student)
    @students.delete(old_student)
  end
end

#DRIVER CODE

island_foxes = GlobalCohort.new('Island Foxes',2015,9,28)
island_foxes.add_student('Brian')
island_foxes.add_student('Abe')
island_foxes.add_student('Fatma')
island_foxes.remove_student('Abe')
p island_foxes.name
p island_foxes.students
p island_foxes.graduated?
p island_foxes.currently_in_phase
island_foxes_sf = LocalCohort.new(island_foxes,'San Francisco')
p island_foxes_sf.students
=end
#REFACTORED SOLUTION

require 'date'

class GlobalCohort
  attr_accessor :name, :students, :p0_start_date, :immersive_start_date, :graduation_date, :email_list, :num_of_students

  def initialize(name,year,month,day)
    @name = name
    @students = []
    @p0_start_date = Time.new(year,month,day)
    @immersive_start_date = @p0_start_date + (63 * (60*60*24))
    @graduation_date = @p0_start_date + (70 * (60*60*24))
    @email_list = ['test1@gmail.com', 'test2@gmail.com']
    @num_of_students = @students.length
  end

  def add_student(new_student)
    @students.push(new_student)
  end

  def remove_student(old_student)
    @students.delete(old_student)
  end

  def currently_in_phase
    if Time.now < @immersive_start_date
        return 'Phase 0'
      elsif Time.now < @immersive_start_date + (3 * (60*60*24))
        return 'Phase 1'
      elsif Time.now < @immersive_start_date + (6 * (60*60*24))
        return 'Phase 2'
      elsif Time.now < @immersive_start_date + (10 * (60*60*24))
        return 'Phase 3'
      else return 'Should have graduated by now.'
    end

  end

  def graduated?
    if Time.now > @graduation_date
        return 'Yes, should have graduated by now.'
      else return 'No, has not gradudated yet.'
    end
  end

end

class LocalCohort < GlobalCohort
  def initialize(global_cohort_name,city)
    @city = city
    @students = global_cohort_name.students  #would need to apply logic to filter by city...
    @email_list = global_cohort_name.email_list  #likewise, fiter for city...
    @num_of_students = @students.to_a.count
  end

  def add_student(new_student)
    @students.push(new_student)
  end

  def remove_student(old_student)
    @students.delete(old_student)
  end
end

#DRIVER CODE

island_foxes = GlobalCohort.new('Island Foxes',2015,9,28)
island_foxes.add_student('Brian')
island_foxes.add_student('Abe')
island_foxes.add_student('Fatma')
island_foxes.remove_student('Abe')
p island_foxes.name
p island_foxes.students
p island_foxes.graduated?
p island_foxes.currently_in_phase
p island_foxes.email_list
island_foxes_sf = LocalCohort.new(island_foxes,'San Francisco')
p island_foxes_sf.students
p island_foxes_sf.email_list

