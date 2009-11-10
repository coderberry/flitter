class AddIndexesToUsers < ActiveRecord::Migration
  def self.up
    add_index :users, :username
    add_index :users, :email
    add_index :friendships, :user_id
    add_index :friendships, :friend_id
    add_index :flits, :user_id
  end

  def self.down
    remove_index :users, :username
    remove_index :users, :email
    remove_index :friendships, :user_id
    remove_index :friendships, :friend_id
    remove_index :flits, :user_id
  end
end
