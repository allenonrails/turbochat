Rails.application.routes.draw do
  root "rooms#index"
  
  resources :messages, only: :create do 
    member { post :like}
  end
  devise_for :users, controllers: { registrations: "registrations" }
  resources :rooms, only: %i[show create], param: :title
end
