Rails.application.routes.draw do
  resources :positive_phrases
  root "positive_phrases#index"
end
