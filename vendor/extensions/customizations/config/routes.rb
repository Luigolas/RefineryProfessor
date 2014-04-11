Refinery::Core::Engine.routes.draw do

  # Frontend routes
  #namespace :customizations do
  #  resources :customizations, :path => '', :only => [:index, :show]
  #end

  # Admin routes
  namespace :customizations, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :customizations, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
