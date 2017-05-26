Rails.application.routes.draw do
  get 'main' => 'contents#main'
  get 'contents/emmenu' => 'contents#emmenu'
  get 'contents/esmenu' => 'contents#esmenu'
  get 'contents/edit/:id' => 'contents#edit'

  get 'login' => 'session#login'
  post   'login'   => 'session#create'
  delete 'logout' => 'session#destroy'

  get 'users/new'
  post 'users' => 'users#create' #users_pathがないと言われたので書いた。多分form_for(user)に反応してこのリクエストを受けると解釈されるっぽい。
  get 'users/edit'

  get 'site/top'
  root 'site#top'
  get 'site/test'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
