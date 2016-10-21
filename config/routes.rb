Rails.application.routes.draw do
  root to: "rooms#show"

  get "/destroy_all", to: "message#destroy_all"

  get "/destroy/:id", to: "message#destroy"

  # Serve websocket cable requests in-process
  mount ActionCable.server => "/cable"
end
