Rails.application.routes.draw do

  mount DocumentSearchEngine::Engine => "/document_search_engine"
end
