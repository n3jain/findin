Findin::Application.routes.draw do
  root :to => 'main#index'
  match 'dashboard' => 'main#dashboard'
  match 'get_data_for_chart' => 'main#get_data_for_chart'
  match 'updates' => 'main#updates'
  match 'chart_demo' => 'main#chart_demo'
end
