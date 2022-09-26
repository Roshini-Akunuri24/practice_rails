Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   get 'demos/index'
   get 'demos/show'
   get 'demos/form'

   
  # Defines the root path route ("/")
  # root "practices#index"
  # root "practices#hello"
end
