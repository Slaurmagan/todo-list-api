Rails.application.routes.draw do
  resources :todos
  post 'user_token' => 'user_token#create'
  resources :users
  scope '/auth' do 
    post 'login',to: 'user_token#create'
    post 'signup',to: 'users#create'
  end
end
