class SearchesController < ApplicationController
  respond_to :html

  def index
    @search = Search.new
  end

  def create
    @search = Search.new(params[:search])

    if @search.valid?
      @rates = Rate.by_dates_and_capacity(@search.start_date, @search.end_date, @search.max_adult, @search.max_child)
    end

    render 'index'
  end
end
