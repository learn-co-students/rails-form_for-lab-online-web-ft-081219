Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show, :new, :edit,:update,:create]
  resources :school_classes, only: [:index, :show, :new, :edit,:update,:create]

end
