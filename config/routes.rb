Rails.application.routes.draw do
  get 'change_forms/new'

  get 'change_forms/create'

  resources :hire_forms, only:[:new, :create]
  resources :hr_forms

  
  
    root 'hr_forms#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
