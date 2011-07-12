# encoding: utf-8
class Admin::FeedbacksController < ApplicationController

  before_filter :authenticate

  def index
    @feedbacks = Feedback.paginate :page => params[:page], :order => 'created_at DESC'
    render :layout => 'application'
  end

  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy
    redirect_to :back
  end

end
