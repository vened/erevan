# encoding: utf-8
class Admin::NewsController < ApplicationController

  before_filter :authenticate

  def index
    @news = News.paginate :page => params[:page], :order => 'created_at DESC'
    render :layout => 'admin'
  end

  def show
    @news = News.find(params[:id])
    render :layout => 'admin'
  end

  def new
    @news = News.new
    render :layout => 'admin'
  end

  def create
    @news = News.new(params[:news])
    if @news.save
      redirect_to admin_news_index_path
    else
      render :action => 'new'
    end
  end

  def edit
    @news = News.find(params[:id])
    render :layout => 'admin'
  end

  def update
    @news = News.find(params[:id])
    if @news.update_attributes(params[:news])
      redirect_to admin_news_path
    else
      render :action => 'edit'
    end
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy
    redirect_to news_url, :notice => "Successfully destroyed news."
  end

end
