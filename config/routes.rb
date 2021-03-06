VolunteerInRomania::Application.routes.draw do
  resources :events
  resources :favorites
  resources :participates
  resources :profiles
  resources :organizations
  resources :users
    
    match 'organizations/:fb_id/show_by_fb_id', to: 'organizations#show_by_fb_id', :via => :get, action: 'show_by_fb_id'
    match 'organizations/:profile_id/show_by_profile_id', to: 'organizations#show_by_profile_id', :via => :get, action: 'show_by_profile_id'
    match 'organizations/:id/profile/:profile', to: 'organizations#show_same_profile', :via => :get, action: 'show_same_profile'
    match 'organizations/:user_id/show_favorites', to: 'organizations#show_favorites', :via => :get, action: 'show_favorites'

    match 'favorites/:user_id/show_favorites', to: 'favorites#show_favorites', :via => :get, action: 'show_favorites'
    
    
    match 'events/:organization_id/show_by_organization_id', to: 'events#show_by_organization_id', :via => :get, action: 'show_by_organization_id'
    #for user show past and future events where he'll attend
    match 'events/:user_id/show_participates', to: 'events#show_participates', :via => :get, action: 'show_participates'
    match 'events/:user_id/show_participates_past', to: 'events#show_participates_past', :via => :get, action: 'show_participates_past'
    match 'events/:user_id/show_participates_future', to: 'events#show_participates_future', :via => :get, action: 'show_participates_future'
    
     #for organization show past and future events he added
    match 'events/:organization_id/show_future_events', to: 'events#show_future_events', :via => :get, action: 'show_future_events'
    match 'events/:organization_id/show_past_events', to: 'events#show_past_events', :via => :get, action: 'show_past_events'


    
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
