class CreateRoommate < ActiveRecord::Migration[5.0]
  def change
    create_table :roommates do |t|
    t.string :name
    end
  end
end
