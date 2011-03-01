class MessagesController < ApplicationController

  respond_to :js

  def new
    @messages = Message.all(:limit => 10, :order => 'created_at ASC')
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    if @message.save
      render :create
    else
      respond_with @message
    end
  end

end
