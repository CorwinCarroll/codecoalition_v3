Codecoalition3::Application.routes.draw do
devise_for :users
resources :users

  def after_sign_in_path_for(resource)
   dashboard_path
  end

  def after_sign_out_path_for(resource)
   courses_path
  end

# top level routes
root "pages#home"
get "dashboard" => "pages#dashboard"
get "courses" => "pages#courses"
get "discussion" => "pages#discussion"
get "iosbootcamp" => "pages#iosbootcamp"
get "discussion" => "pages#discussion"

# Section 00
get "iosbc_sec00/tour"
get "iosbc_sec00/xcode"
get "iosbc_sec00/appleid"
get "iosbc_sec00/intro"
get "iosbc_sec00/setup"
get "iosbc_sec00/labeluse"
get "iosbc_sec00/button"
get "iosbc_sec00/color"
get "iosbc_sec00/uitextfield"
get "iosbc_sec00/uicontrollers"
get "iosbc_sec00/ios102next"


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
