Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'home#index'
   get 'employees/:id'  => 'home#show'
   get  '/formview' => 'home#formview'
   get  '/form' => 'home#form'
   post 'employees/create' => 'home#create'
   delete 'employees/delete' =>'home#delete'
   post  'employees/delete' =>'home#delete'
   get 'employees/edit' =>'home#edit'
   post  'employees/edit' =>'home#edit'
    get 'employees/edit/:id'  => 'home#edit'
    post '/update/:id' => 'home#update'
    get '/update/:id' => 'home#update'
     patch '/create1/:id' => 'home#create1'
     patch '/update/:id' => 'home#update'
     get '/update_file/'=>'home#update_file'
      get '/update_file/:id'=>'home#update_file'
      patch '/update_data/:id' =>'home#update_data'
     get '/update_data/:id' =>'home#update_data'
     get '/updateddata/:id' =>'home#updateddata'
     patch '/updateddata/:id' =>'home#updateddata'
     get '/alluser' =>'home#alluser' 
     get '/reorder' =>'home#reorder'
     get '/users' =>'home#users'
      get '/search'=>'home#search'
     post '/search'=>'home#search' 
     patch '/search'=>'home#search'
     get '/select'=>'home#select'
     get '/datentime'=>'home#datentime'
     get '/searching' =>'home#searching'
     get '/upload' =>'home#upload'
      get '/builder' =>'home#builder'
      post '/builder'=>'home#builder'
      get '/finduser'=>'home#finduser'
      put '/find' =>'home#find'
      get '/find' =>'home#find'
   

  
   

 
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
