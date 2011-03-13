class SearchesController < ApplicationController
  respond_to :html

  def index
    @search = Search.new
  end

  def create
    @search = Search.new(params[:search])

    if @search.valid?
      @rates = Rate.where('start_date <= ?', @search.start_date).where('end_date >= ?', @search.end_date).includes(:room)
    end

    render 'index'
  end
end
