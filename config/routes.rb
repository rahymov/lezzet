Rails.application.routes.draw do
  
  resources :categories do
  	resources :menu_items
  end
  
  controller :pages do
	  get '/home', to: "pages#home"
	  get '/about', to: "pages#about"
	  get '/contact', to: "pages#contact"
	end
  root "pages#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
