class FeedbacksController < ApplicationController

  def index
    @feedbacks = Feedback.paginate :page => params[:page], :order => 'created_at DESC'
    @feedback = Feedback.new
    @feed = 1
    render :layout => 'application_f'
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

end
