class Chore < ActiveRecord::Base
  belongs_to :roommate

#add chores
#update chores
#list chores
require 'pry'
def choices
  puts "What would you like to do?"
  @input = gets.chomp.capitalize
  input = @input
  binding.pry
  if input == "Create Chore"
    create_chore
  end
end


def list_chores
  Chore.all.select do |chore|
    p chore
  end
end

def create_chore
  puts "Please enter a chore"
  @input = gets.chomp.capitalize
  input = @input
  Chore.create(chore: input)
end

def delete_chore
  puts "Enter a chore to delete"
  @input = gets.chomp.capitalize
  input = @input
  Chore.where(chore: input).destroy_all
end






end
