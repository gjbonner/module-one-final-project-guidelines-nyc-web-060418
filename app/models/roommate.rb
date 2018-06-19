class Roommate < ActiveRecord::Base
  has_many :chores
  has_many :chores, through: :assigned_chores

  def welcome
    puts "Please enter your name: "
    @input = gets.chomp
    input = @input
  end

  def user_check(input)
    name_val = Roommate.find_by(name: "#{input}")
    if name_val == nil
      puts 'Welcome! Please add your name.'
    else
      puts 'Hey again!'
    end
  end

end
