class RemoveColumnFromFriends < ActiveRecord::Migration[6.1]
  def change
    remove_column :friends, :friend_id
  end
end
