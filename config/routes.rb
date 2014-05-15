Rails.application.routes.draw do
  get 'users/new'

  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  Blog::Application.routes.draw do
   
  get 'users/new'

    resources :users 
      # resources :articles do
    match '/articles/' => 'articles#index', via: :get
    match '/articles/' => 'articles#create', via: :post
    match '/articles/new' => 'articles#new', via: :get
    match '/articles/:id/edit' => 'articles#edit', via: :get
    match '/articles/:id' => 'articles#show', via: :get
    match '/articles/:id' => 'articles#update', via: :put
    match 'articles/:id' => 'articles#destroy', via: :delete
        resources :comments
        
      # end
   



    root 'welcome#index'

   end


# match ':controller(/:action(/:id))(.:format)'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

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
