Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    root to: 'devise/sessions#new'
  end

  authenticated :user do
    root :to => "main#dashboard"
    # Rails 4 users must specify the 'as' option to give it a unique name
    # root :to => "main#dashboard", :as => "authenticated_root"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
