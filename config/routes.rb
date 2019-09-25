Rails.application.routes.draw do
  get 'invoices/new_invoice'
  get 'invoices/list'
  post 'invoices/create'
root :to => 'users#new'
  post 'users/login'
  get 'users/login'
  get 'users/index'
  get 'users/edit'
  get 'users/signup'
  get 'users/list'
  get 'users/new'
  get 'transactions/index'
  get 'transactions/edit'
  get 'transactions/list'
  post 'users/create'
  post 'users/dashbord' => "users#dashbord",:as =>'dashbord'
  post 'users/dash'
  get 'users/dashbord' => "users#dashbord",:as =>'dash'
  get 'users/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
