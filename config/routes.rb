Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/cocktails', to: "cocktails#index"
  get '/cocktail/:id', to: "cocktails#show", as: :cocktail
  get '/cocktails/new', to: "cocktails#new", as: :new_cocktail
  post '/cocktails', to: "cocktails#create"

  get '/cocktails/doses/new', to: "doses#new", as: :dose
  #post '/cocktails/:id/doses/create', to: "doses#create", as: :add
  #delete "/doses/:id" to: "doses#destroy", as: :destroy
end
