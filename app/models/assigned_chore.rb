class AssignedChore < ActiveRecord::Base
  belongs_to :roommate
  belongs_to :chore
end
