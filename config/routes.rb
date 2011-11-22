Cheapflightstodelhi::Application.routes.draw do
  resources :pages

  resources :subscribe_details

  resources :enquiry_details

  resources :airline_classes

  resources :fare_details

  resources :departures

  resources :airlines

  resources :destinations do
    collection do
      post :delete_fare
      post :destroy_destination
    end
  end

  resources :welcome do
    collection do
      get :booking_terms
      get :flights
      get :contact_us
      get :about_us
      get :faqs
      post :send_enquiry
      get :destination
      post :send_contact_us
    end
  end

  match '/' => 'welcome#index'
  match '/admin' => 'pages#index'

  devise_for :users
  devise_scope :user do
    root :to => "devise/sessions#new"
    get "sign_in", :to => "devise/sessions#new"
    get "sign_out", :to => "devise/sessions#destroy"
    post "send_enquiry", :to => "welcome#send_enquiry"
#    get "sign_up", :to => "devise/registrations#new"
  end

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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
