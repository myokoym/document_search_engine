DocumentSearchEngine::Engine.routes.draw do
  resources :documents
  root "documents#index"
end
