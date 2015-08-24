Rails.application.routes.draw do
  resources :employees do
    resources :dispersements
    get '/positions', to: 'employee_positions#index', as: "positions"
    put '/positions', to: 'employee_positions#create'
    get '/positions/new', to: 'employee_positions#new', as: "new_position"
    get '/positions/:id/edit', to: 'employee_positions#edit', as: "edit_position"
    get '/positions/:id', to: 'employee_positions#show', as: "position"
    patch '/positions/:id', to: 'employee_positions#update'
    put '/positions/:id', to: 'employee_positions#update'
    delete '/positions/:id', to: 'employee_positions#destroy'
  end

  resources :schedule_types
  resources :positions
  resources :schedule_type_positions

  resources :schedules do
    resources :tip_pools
    get '/positions', to: 'schedule_employee_positions#index', as: "employee_positions"
    put '/positions', to: 'schedule_employee_positions#create'
    get '/positions/new', to: 'schedule_employee_positions#new', as: "new_employee_position"
    get '/positions/:id/edit', to: 'schedule_employee_positions#edit', as: "edit_employee_position"
    get '/positions/:id', to: 'schedule_employee_positions#show', as: "employee_position"
    patch '/positions/:id', to: 'schedule_employee_positions#update'
    put '/positions/:id', to: 'schedule_employee_positions#update'
    delete '/positions/:id', to: 'schedule_employee_positions#destroy'
  end

  resources :tip_pool_employee_positions


  # resources :positions
  # resources :schedule_types
  # resources :schedules do
  #   resources :tip_pools
  # end

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
end
