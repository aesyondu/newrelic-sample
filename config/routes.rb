Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'health_check#index'
  get 'trace_enabled', to: 'health_check#show'
end
