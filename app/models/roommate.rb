require 'pry'
require_relative './chore'

class Roommate < ActiveRecord::Base
  has_many :chores
  has_many :chores, through: :assigned_chores

  def welcome
    puts "Please enter your name: "
    @input = gets.chomp.capitalize
    input = @input
    user_check(input)
  end

  def user_check(input)
    name_val = Roommate.find_by(name: "#{input}")
    if name_val == nil
      puts 'Welcome! Please add your name.'
      create_new_user(input)
      list_methods
    else
      puts "Welcome back #{input}!"
      list_methods
    end
    exit_program(input)
  end

  def create_new_user(input)
    @input = gets.chomp.capitalize
    Roommate.create(name: input)
  end

  def list_methods
     puts <<-STRING
     -----------------------------------------
     What would you like to do?
     Create a new chore? Type 'create'
     List your chores? Type ‘list’
     Update your assignments? Type ‘update’
     Delete a chore? Type 'delete'
     Assign a chore? Type 'assign chore'
     End your session? Type ‘end'
     STRING
     @input = gets.chomp.capitalize
     input = @input
      if input == "List"
        option
      elsif input == "End"
        exit_program(input)
      elsif input == "Update"
        Chore.new.update_chore
      elsif input == "Create"
        Chore.new.create_chore
      elsif input == "Delete"
        Chore.new.delete_chore
      elsif input == "Assign chore"
        AssignedChore.new.assign_chore
      else
        puts "Invalid command, try again"
      end
      list_methods
  end

   def exit_program(input = "End")
     # input = gets.chomp
     if input == "End"
       abort
     end
   end

   def option
         Chore.new.list_chores
     end

end
