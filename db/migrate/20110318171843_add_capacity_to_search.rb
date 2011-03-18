class AddCapacityToSearch < ActiveRecord::Migration
  def self.up
    remove_column :searches, :capacity
    add_column :searches, :max_adult, :integer
    add_column :searches, :max_child, :integer
  end

  def self.down
    add_column :searches, :capacity, :integer
    remove_column :searches, :max_adult
    remove_column :searches, :max_child
  end
end
