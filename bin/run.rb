require_relative '../config/environment'
require_relative '../app/models/assigned_chore'
require_relative '../app/models/chore'
require_relative '../app/models/roommate'
require 'pry'

  # puts "Please enter your name: "
  # @input = gets.chomp
  # name_val = Roommate.find_by(name: "#{@input}")
  # if name_val == nil
  #   puts 'Welcome! Please add your name.'
  # else
  #   puts 'Hey again!'
  # end

Roommate.new.welcome
# Roommate.new.user_check(input)
