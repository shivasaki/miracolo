Rails.application.routes.draw do
  get 'main' => 'contents#main'
  get 'contents/emmenu' => 'contents#emmenu'
  get 'contents/esmenu' => 'contents#esmenu'
  get 'contents/edit/:id' => 'contents#edit'
  post 'contents/update' => 'contents#update'
  patch 'contents/update' => 'contents#update'

  get 'login' => 'session#login'
  post   'login'   => 'session#create'
  delete 'logout' => 'session#destroy'

  get 'users/new'
  post 'users/create' => 'users#create'
  get 'users/edit'
  patch 'users/update' =>  'users#update'

  get 'site/top'
  root 'site#top'
  get 'site/test'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
