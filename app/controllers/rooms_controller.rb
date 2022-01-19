class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @message = current_user.messages.build
    @messages = Message.all
  end
end
