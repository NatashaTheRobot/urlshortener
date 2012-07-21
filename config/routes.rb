Urlshortener::Application.routes.draw do
  root :to => 'urls#index'
  
  resources :urls
  
  resources :stats
  
  match "/:slug" => 'stats#redirect'
  

end
