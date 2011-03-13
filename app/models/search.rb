class Search < ActiveRecord::Base
  validates :start_date, :presence => true
  validates :end_date, :presence => true
  validate :date_range


  def date_range
    errors.add(:start_date, 'can not be greater than end date') if start_date > end_date
  end
end
