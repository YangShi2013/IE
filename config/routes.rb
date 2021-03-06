IE::Application.routes.draw do
  resources :broadcasts

  resources :topics

  resources :classtimes

  resources :users
  root to: 'pages#home'
  get "pages/home"
  get "pages/home" => "pages#home"
  get "search" => "pages#search"
  get "student" => "pages#student"
  get "sisley" => "pages#sisley"
  
  get "broadcast"=> "pages#broadcast"
  
  post "loadUser" => "pages#loadUser"
  post "exportUser" => "users#exportUser"
  post "loadTopic" => "pages#loadTopic"
  post "loadClassTime" => "pages#loadClassTime"
  
  get "backSisley" => "pages#backSisley"
  
  get "resetUser" => "pages#resetUser"
  get "resetClasstime" => "pages#resetClasstime"
  get "resetTopic" => "pages#resetTopic"
  
  get "/pages/dbadmin" => "pages#dbadmin"
  
  get "searchUser" => "users#search"
  get "searchClasstime" => "classtimes#search"
  #post "import" => "pages#import"
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

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
