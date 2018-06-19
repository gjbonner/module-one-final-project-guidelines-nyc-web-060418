require_relative '../config/environment'
require_relative '../app/models/assigned_chore'
require_relative '../app/models/chore'
require_relative '../app/models/roommate'

giles = Roommate.create(name: "Giles")
laundry = Chore.create(chore: "laundry")
chore_1 = AssignedChore.create(roommate: giles, chore: laundry)
