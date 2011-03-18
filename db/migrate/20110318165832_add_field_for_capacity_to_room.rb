class AddFieldForCapacityToRoom < ActiveRecord::Migration
  def self.up
    remove_column :rooms, :capacity
    add_column :rooms, :max_adult, :integer
    add_column :rooms, :max_child, :integer
  end

  def self.down
    add_column :rooms, :capacity, :integer
    remove_column :rooms, :max_adult
    remove_column :rooms, :max_child
  end
end
