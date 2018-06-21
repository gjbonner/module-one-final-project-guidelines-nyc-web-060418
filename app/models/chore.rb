class Chore < ActiveRecord::Base
  belongs_to :roommate

require 'pry'

def list_chores
  Chore.all.select do |chore|
    puts chore.chore
  end
end

def create_chore
  puts "Please enter a chore"
  input = gets.chomp.capitalize
  if Chore.exists?(chore: input)
    puts "Chore already exists!"
  else
    Chore.create(chore: input)
    puts "Chore #{input} created!"
  end
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
