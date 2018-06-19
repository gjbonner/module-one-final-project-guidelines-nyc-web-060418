require_relative '../config/environment'
require_relative '../app/models/assigned_chore'
require_relative '../app/models/chore'
require_relative '../app/models/roommate'
require 'pry'

puts "Please enter your name: "
input = gets.chomp
Roommate.find do |roommate|
    #binding.pry
  if roommate.name.downcase == input.downcase
    puts 'Welcome back!'
  else
    puts 'Welcome! Please add your name.'
  end
end
