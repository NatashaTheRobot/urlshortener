Urlshortener::Application.routes.draw do
  root :to => 'urls#index'
  
  resources :urls
  
  match "/:slug" => 'urls#redirect'

end
