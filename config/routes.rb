Rails.application.routes.draw do
  devise_for :users
  resources :courses,only: [:index, :show]
	root 'static_pages#index' 
	namespace :instructor do 
		resources :courses, only: [:new, :create, :show]
	end
end
