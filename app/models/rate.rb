class Rate < ActiveRecord::Base
  belongs_to :room

  def total_rate
    12 * 5
  end
end
