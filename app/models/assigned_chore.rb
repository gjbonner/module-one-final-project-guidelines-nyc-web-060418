require 'pry'

class AssignedChore < ActiveRecord::Base
  belongs_to :roommate
  belongs_to :chore

  #assign chores
  #see whos assigned a chore
  #add delete assigned chores


  def assign_chore
    @roommate_id = nil
    puts "Enter a roommate name"
    person = gets.chomp.capitalize
    Roommate.all.each do |roommate|
      if roommate.name == person
        @roommate_id = roommate
      end
    end
    puts "Enter a task"
    task = gets.chomp.capitalize
    Chore.all.each do |chore|
      if chore.chore == task
        AssignedChore.create(roommate: @roommate_id, chore: chore)
      end
    end
  end

  def delete_assigned_chores
    puts 'enter roommmate id'
    input =  gets.chomp.to_i
    AssignedChore.delete_all(roommate_id: input)
  end

  def list_assigned_chores
    puts 'enter your id'
    input = gets.chomp.to_i
    AssignedChore.all.select do |chore|
      if chore.roommate_id == input
        p chore.chore
      end
    end
  end


end
