Rails.application.routes.draw do
  root to: "contacts#show"
  get '/contact', to: "contacts#show"
  post '/contact_us', to: "contacts#contact_us"
  match '*a', to: "application#page_not_found", via: :get
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
