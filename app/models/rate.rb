class Rate < ActiveRecord::Base
  belongs_to :room

  scope :by_dates_and_capacity, lambda{|start_date, end_date, adults, children| where('start_date <= ?', start_date).where('end_date >= ?', end_date).includes(:room).where('rooms.max_adult >= ?', adults).where('rooms.max_child >= ?', children)}

  def total_rate(adults, children)
    rate_adult = 10
    rate_child = 5
    charge = 20

    (rate_child * adults) + (rate_child * children) + charge
  end
end
