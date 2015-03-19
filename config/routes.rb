FantasyMarvelLeagueOnRails::Application.routes.draw do
  root :to => 'users#profile'
  post "/characters/add" => 'characters#add'
  post "/characters/swap_user" => 'characters#swap_user'
  get "/characters" => 'characters#index'
  get "/characters/all" => 'characters#all'
  get "/characters/delete/:id" => 'characters#drop'

  get "/messages/new/:id" => 'messages#new'
  post "/messages/new" => 'messages#new'
  post "/messages/send" => 'messages#send'
  get "/messages" => 'messages#index'

  get "/search" => 'search#new'
  post "/search_results" => 'search#results'

  get "/teams" => 'teams#index'
  get "/teams/all" => 'teams#all'
  get "/teams/details/:slug" => 'teams#show'
  get "/teams/new" =>  'teams#new'
  post "/teams/create" => 'teams#create'
  get "/teams/edit/:id" => 'teams#edit'
  get "/teams/confirm_edit" => 'teams#update'
  get "/teams/delete/:id" => 'teams#delete'
  get "/teams/confirm_delete/:id" => 'teams#confirm_delete'
  post "/teams/assign" => 'teams#assign'
  get "/teams/unassign/:id" => 'teams#unassign'
    
  get "/start_trade/:id" => 'trades#start'
  post "/confirm_trade" => 'trades#confirm'

  get "/login" => 'users#login'
  get "/logout" => 'users#logout'
  post "/login/user/verification" => 'users#verification'
  get "/login/user/setup" => 'users#setup'
  post "/login/user/confirm_creation" => 'users#confirm_creation'
  post "/login/user/create_profile" => 'users#create'
  get "/user/profile" => 'users#profile'
  get "/user/edit_profile" => 'users#edit'
  post "/user/confirm_edit" => 'users#update'
  get "/user/delete_profile" => 'users#delete'
  get "/user/confirm_delete" => 'users#destroy'

  get "/wishlist" => 'wishlists#show'
  get "/wishlist/all" => 'wishlists#all'
  post "/wishlist/add_offer" => 'wishlists#add_offer'
  get "/wishlist/add/:name" => 'wishlists#add_character'

  
  
  
  
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
  #   resources :products =>
  #     member =>
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection =>
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products =>
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products =>
  #     resources :comments
  #     resources :sales =>
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin =>
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
