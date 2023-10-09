Rails.application.routes.draw do
  resources :birds, only: [:index, :show, :create, :update]

  #To take the responsibility for handling likes off of the frontend, we can provide a custom route that will do the work of calculating the number of likes and incrementing it. With this approach, all the frontend has to do is send a request to our new custom route, without worrying about sending any data in the body of the request.

  patch "/birds/:id/like", to: "birds#increment_likes"

end
