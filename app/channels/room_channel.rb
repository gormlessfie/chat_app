class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'room'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def receive(data)
    data['user'] = current_user
    ActionCable.server.broadcast('room', data)
  end
end
