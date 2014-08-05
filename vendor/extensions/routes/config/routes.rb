Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :routes do
    resources :routes, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :routes, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :routes, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
