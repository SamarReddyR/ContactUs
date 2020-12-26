Rails.application.routes.draw do
  get '/contact', to: "contacts#show"
  post '/contact_us', to: "contacts#contact_us"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
