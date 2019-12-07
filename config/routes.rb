Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

 get 'about' => 'pages#about', as: 'about'
  root 'posts#index' , as: 'home'

resources :posts do 
  resources :comments
end

end
