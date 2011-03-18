# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
#

rooms = Room.create([{:name => 'Cuarto 1', :max_adult => 2, :max_child => 2}, {:name => 'Cuarto 2', :max_adult => 4, :max_child => 2}])

rate1 = Rate.new(:start_date => Date.parse('2011-01-01'), :end_date => Date.parse('2011-03-01'))
rate2 = Rate.new(:start_date => Date.parse('2011-02-01'), :end_date => Date.parse('2011-04-01'))

rooms.first.rates << rate1
rooms.first.save

rooms.last.rates << rate2
rooms.last.save
