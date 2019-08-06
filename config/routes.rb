Rails.application.routes.draw do
  resources :interruptions

  root to: "interruptions#index"
end
