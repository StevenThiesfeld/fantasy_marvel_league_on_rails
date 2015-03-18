FantasyMarvelLeagueOnRails::Application.routes.draw do
  
  post "/characters/add" do
  post "/characters/swap_user" do
  get "/characters" do
  get "/characters/all" do
  get "/characters/delete/:id" do

  ["/messages/new/:id", "/messages/new"].each do |route|
  post "/messages/send" do
  get "/messages" do

  get "/search" do
  post "/search_results" do

  get "/teams" do
  get "/teams/all" do
  get "/teams/details/:slug" do
  get "/teams/new" do 
  post "/teams/create" do
  get "/teams/edit/:id" do 
  get "/teams/confirm_edit" do
  get "/teams/delete/:id" do
  get "/teams/confirm_delete/:id" do
  post "/teams/assign" do
  get "/teams/unassign/:id" do
    
  get "/start_trade/:id" do
  post "/confirm_trade" do

  get "/login" do
  get "/logout" do
  post "/login/user/verification" do
  get "/login/user/setup" do
  post "/login/user/confirm_creation" do 
  post "/login/user/create_profile" do
  get "/user/profile" do
  get "/user/edit_profile" do
  post "/user/confirm_edit" do
  get "/user/delete_profile" do
  get "/user/confirm_delete" do

  get "/wishlist" do
  get "/wishlist/all" do
  post "/wishlist/add_offer" do
  get "/wishlist/add/:name" do

  
  
  
  
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
