Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    scope 'v1' do
        resources :users do
            resources :contacts
        end
        get '/auth/wazzaa', to: 'users#auth_user'
    end
end
