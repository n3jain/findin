Findin::Application.routes.draw do
  root :to => 'main#index'
  match 'dashboard' => 'main#dashboard'
end
