require_relative '../config/environment'
require_relative '../app/models/assigned_chore'
require_relative '../app/models/chore'
require_relative '../app/models/roommate'

giles = Roommate.create(name: "Giles")
p giles.name
laundry = Chore.create(chore: "laundry")
p laundry
chore_1 = AssignedChore.create(roommate: giles, chore: laundry)
p chore_1
