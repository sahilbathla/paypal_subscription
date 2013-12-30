PaypalDemo::Application.routes.draw do
  get "users/show"
  devise_for :users 

  get '/users/:id/premium_page/', to: 'users#premium_page', :as => :premium_page
  
  root 'users#show'

  match "/paypal_subscription/notify"  => "paypal_subscriptions#notify",  :as => :paypal_notify, via: [:post, :get]


  resource :paypal_subscription, only: [] do
    get 'successful'
    get 'failure'
    get 'notify'
  end

  get "/paypal_subscription/successful/:token"  => "paypal_subscriptions#successful"

  # scope :module => "transactions" do
  #   match "/paypal/success" => "paypal#paypal_success", :as => :paypal_success, via: [:get, :post]
  #   match "/paypal/failure" => "paypal#paypal_failure", :as => :paypal_failure, via: [:get, :post]
  #   match "/paypal/notify"  => "paypal#paypal_notify",  :as => :paypal_notify, via: [:get, :post]
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
