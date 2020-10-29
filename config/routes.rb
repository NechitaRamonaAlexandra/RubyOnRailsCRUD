Myrottenpotatoes::Application.routes.draw do
  resources :my_tabels
  resources :movies
  root :to =>	redirect('/movies')
end