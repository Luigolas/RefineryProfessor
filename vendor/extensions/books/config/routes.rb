Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :books do
    resources :books, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :books, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :books, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
