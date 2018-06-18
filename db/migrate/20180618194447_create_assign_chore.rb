class CreateAssignChore < ActiveRecord::Migration[5.0]
  def change
    create_table :assigned_chores do |t|
      t.references :roommate
      t.references :chore
    end
  end
end
