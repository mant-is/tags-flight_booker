Rails.application.routes.draw do
  resources :flights, only: :index
  resources :bookings, only: %i[create new show] do
    get 'search', on: :collection
  end

  root 'flights#index'
end

