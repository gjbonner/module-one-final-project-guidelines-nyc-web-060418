require 'pry'

class AssignedChore < ActiveRecord::Base
  belongs_to :roommate
  belongs_to :chore

  @@my_chores = 0

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
    if Chore.exists?(chore: task)
    Chore.all.find do |chore|
      if chore.chore == task
        AssignedChore.create(roommate: @roommate_id, chore: chore)
      end
    end
    puts "Chore successfully assigned to #{person}"
    @@my_chores = 1
    else
      puts "Chore assignment failed"
    end
  end

  def delete_assigned_chores
    puts 'enter roommate name'
    input =  gets.chomp.capitalize
    if @@my_chores == 0
      puts "You have no chores to delete"
    else
    AssignedChore.all.select do |chore|
      if chore.roommate.name == input
        @@my_chores = 0
        chore.delete
      end
    end
    puts "Good job on doing your chores!"
  end
end

  def list_assigned_chores
    puts 'enter your name'
    input = gets.chomp.capitalize
    if @@my_chores == 0
      puts "You have no chores!"
    else
    AssignedChore.all.select do |chore|
      chore.roommate.name == input
        puts chore.chore.chore
      end
    end
  end
end
