class AddRoomToChore < ActiveRecord::Migration[6.0]
  def change
    add_column :chores, :room, :string
  end
end
