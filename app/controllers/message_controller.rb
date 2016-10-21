class MessageController < ApplicationController
  http_basic_authenticate_with name: ENV["USERNAME"], password: ENV["PASSWORD"]

  def destroy_all
    Message.destroy_all
  end

  def destroy
    Message.destroy params["id"]
  end
end
