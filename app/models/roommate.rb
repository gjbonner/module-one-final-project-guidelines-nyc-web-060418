require 'pry'
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

     puts "--------------------------------------"
     puts "What would you like to do?"
     puts "List your chores? Type ‘list’"
     puts "Update your assignments? Type ‘update’"
     puts "End your session? Type ‘end’"
     @input = gets.chomp.capitalize
     input = @input
      if input == "List"
        option
      elsif input == "End"

        exit_program(input)
      else
        exit_program(input)
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
