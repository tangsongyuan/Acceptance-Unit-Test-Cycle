Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  resources :movies do
    resources :similar, :controller=> 'movies', :action => 'similar', :only => [:index]
  end
  root :to => redirect('/movies')
  get 'movies/:id/same_director' => 'movies#same_director', :as => :same_director
end
