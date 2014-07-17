Collections::Application.routes.draw do
  devise_for :users

  resources :binds


  resources :types


  resources :tracks


  resources :technicals


  resources :tags


  resources :subtypes


  resources :releases


  resources :release_tracks


  resources :release_loans


  resources :release_languages


  resources :related_releases


  resources :recording_types


  resources :ratings


  resources :publishers


  resources :pictures


  resources :persons_releases


  resources :persons_addres


  resources :people


  resources :languages


  resources :information_tags


  resources :information


  resources :gradings


  resources :genres


  resources :genre_types


  resources :formats


  resources :format_types


  resources :followings


  resources :edition_types


  resources :countries


  resources :conditions


  resources :collection_types


  resources :category_types


  resources :categories


  resources :bases


  resources :audio_types


  resources :artist_types


  resources :artist_people


  resources :artists


  resources :addres


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
     resources :releases

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
 #  root :to => 'bases'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
  root :to => redirect('/bases')
  
  resources :releases do
	  resources :comments
	end
end
