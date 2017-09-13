class Conversations::MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_conversation, except: [:reply]
 
  def index
  end

  def create
  end

  def reply
  end

  private
  	def set_conversation
  		@conversations = current_user.conversations.find(params[:conversations_id])
  	end
end
