Rails.application.routes.draw do
  get 'home/index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'sessions/welcome'

 get 'home/index'
 #root 'home#index'
 
  resources :users
  resources :sessions,only:[:new,:create,:destroy]
  get 'signup',to:'user#new',as:'signup'
  get 'login',to:'sessions#new',as:'login'
  get 'logout',to:'sessions#destroy',as:'logout'
  get 'welcome',to:'user#welcome',as:'welcome'


  get 'user/login'







 get  'book/delete'
 get  'book/update'
 get  'book/save'
 get  'book/list'
 get  'book/show'
 get  'book/new'
 get  'book/create'
 get  'book/destroy'
 get  'book/edit'
 get  'book/login'


 get  'user/first'
 get  'user/register'

 #root 'user#first'

 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#get 'book/welcome'

root 'book#welcome'

#get "/book", to:"book#welcome"

#get 'display/hello'

#get  'first/login'

match ':controller(/:action(/:id(.:format)))',:via => [:get,:post]

end
