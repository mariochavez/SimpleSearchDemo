class CreateRates < ActiveRecord::Migration
  def self.up
    create_table :rates do |t|
      t.integer :room_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :rates
  end
end
