class Roommate < ActiveRecord::Base
  has_many :chores
  has_many :chores, through: :assigned_chores

end
