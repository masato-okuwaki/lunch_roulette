Rails.application.routes.draw do
  root "shops#index"
  resources :shops, only: [:index, :new, :create] do
  end
end

