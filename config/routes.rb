Rails.application.routes.draw do
  resources :member do
    member do
      post :add_friend
      post :search_topic
    end
  end
end
