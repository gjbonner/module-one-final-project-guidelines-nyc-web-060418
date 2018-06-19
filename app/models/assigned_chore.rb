require 'pry'

class AssignedChore < ActiveRecord::Base
  belongs_to :roommate
  belongs_to :chore

  #assign chores
  #see whos assigned a chore
  #add delete assigned chores


  def assign_chore
    puts "Enter a roommate name"
    person = gets.chomp.capitalize
    Roommate.all.each do |roommate|
      if roommate.name == person
      end
    end
    puts "Enter a task"
    task = gets.chomp.capitalize
    Chore.all.each do |chore|
      if chore.chore == task
        AssignedChore.create(roommate: roommate, chore: chore)
      end
    end
  end



end
