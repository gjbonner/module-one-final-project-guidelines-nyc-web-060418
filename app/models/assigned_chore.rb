class AssignedChore < ActiveRecord::Base
  has_one :roommate
  has_one :chore
end
