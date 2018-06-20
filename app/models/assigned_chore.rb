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
        puts "Chore successfully assigned to #{person}"
      end
    end
  end

  def delete_assigned_chores
    puts 'enter roommate name'
    input =  gets.chomp.capitalize
    AssignedChore.all.select do |chore|
      if chore.roommate.name == input
        chore.delete
      end
    end
    puts 'Good job on doing your chores!'
  end
  #AssignedChore.delete_all(roommate_id: input)


  def list_assigned_chores
    puts 'enter your name'
    input = gets.chomp.capitalize
    AssignedChore.all.select do |chore|
      if chore.roommate.name == input
        puts chore.chore.chore
        puts 'Dont forget to do your chores!'
      end
    end
  end

end
