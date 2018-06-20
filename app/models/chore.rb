class Chore < ActiveRecord::Base
  belongs_to :roommate

#add chores
#update chores
#list chores
require 'pry'



def list_chores
  Chore.all.select do |chore|
    p chore
  end
end

def create_chore
  puts "Please enter a chore"
  input = gets.chomp.capitalize

  Chore.create(chore: input)
end

def delete_chore
  puts "Enter a chore to delete"
  input = gets.chomp.capitalize
  Chore.delete_all(chore: input)
end

def update_chore
  puts "Enter a chore to update"
  input = gets.chomp.capitalize
  chore = Chore.find_by(chore: input)
  puts "Enter an updated chore"
  updated_chore = gets.chomp.capitalize
  chore.update(:chore => updated_chore)
end

end
