class HomeChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "home_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def log(data)
    ActionCable.server.broadcast "home_channel", message: data['message']
  end
end
