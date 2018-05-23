Rails.application.routes.draw do
  devise_for :users
  root to: 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  resources :projects do
    collection do
        get 'vr', to: 'projects#vr'
    end
    member do
      get 'showvr', to: 'projects#showvr'
      get 'lastest', to: 'projects#lastest'
    end
    resources :artworks, only: [:new, :create, :edit, :show, :showvr, :update, :destroy ], shallow: true

  end

  resources :artworks, only: [:index]

resources :infos, only: [:index, :new, :create, :edit, :show, :update, :destroy]

resources :events, only: [:index, :new, :create, :edit, :show, :update, :destroy]

resources :texts, only: [:index, :new, :create, :edit, :update, :destroy]

end

