# encoding: utf-8
class Admin::FeedbacksController < ApplicationController

  def index
    @feedbacks = Feedback.paginate :page => params[:page], :order => 'created_at DESC'
    @feedback = Feedback.new
    @feed = 1
    render :layout => 'admin'
  end

  def create
    @feedbacks = Feedback.paginate :page => params[:page], :order => 'created_at DESC'
    @feedback = Feedback.new(params[:feedback])
    @feed = 1
    if @feedback.save
      redirect_to feedbacks_url
    else
      render :action => 'index', :layout => 'application_f'
    end
  end

  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy
    #redirect_to feedbacks_url
    #redirect_to admin_feedbacks_url
    redirect_to :back
    #render :layout => 'admin'
  end

end
