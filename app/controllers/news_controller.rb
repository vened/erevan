class NewsController < ApplicationController
  def index
    @news = News.paginate :page => params[:page], :order => 'created_at DESC'
    @new = 1
  end

  def show
    @news = News.find(params[:id])
    @new = 1
  end
end
