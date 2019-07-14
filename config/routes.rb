Rails.application.routes.draw do
  devise_for :users
  root to: 'messages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  get 'messages' => 'messages#index'
  get 'messages/new' => 'messages#new'
  post 'messages' => 'messages#create'
  delete  'messages/:id'  => 'messages#destroy'
  patch   'messages/:id'  => 'messages#update'
  get   'messages/:id/edit'  => 'messages#edit'
end
