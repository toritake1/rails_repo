Rails.application.routes.draw do
  root 'top#index'
  get '/idollists' => 'idollists#index', as: :idol_list

  resources :a_idollists
  resources :ka_idollists
  resources :sa_idollists
  resources :ta_idollists
  resources :na_idollists
  resources :ha_idollists
  resources :ma_idollists
  resources :ya_idollists
  resources :ra_idollists
  resources :wa_idollists

  get '/cuplists' => 'cuplists#index', as: :cup_list
  get '/bustlists' => 'bustlists#index', as: :bust_list

  resources :a_movie
  resources :ka_movie
  resources :sa_movie
  resources :ta_movie
  resources :na_movie
  resources :ha_movie
  resources :ma_movie
  resources :ya_movie
  resources :ra_movie
  resources :wa_movie

  resources :my_resources do
  	get 'page/:page', :action => :index, :on => :collection
  end

  #get 'idollists' => 'idollists#index'
  #get 'idollists/:id' => 'idollists#show'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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

  #get '*path', to: 'application#error_404'
end
