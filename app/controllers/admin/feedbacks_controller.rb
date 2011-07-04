# encoding: utf-8
class Admin::FeedbacksController < ApplicationController

  before_filter :authenticate_user!

  def index
    @feedbacks = Feedback.paginate :page => params[:page], :order => 'created_at DESC'
    @feedback = Feedback.new
    @feed = 1
    render :layout => 'application'
  end

  def create
    @feedbacks = Feedback.paginate :page => params[:page], :order => 'created_at DESC'
    @feedback = Feedback.new(params[:feedback])
    @feed = 1
    if @feedback.save
      redirect_to feedbacks_url
    else
      render :action => 'index', :layout => 'application'
    end
  end

  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy
    redirect_to :back
  end

end
