Rails.application.routes.draw do
  resources :meme_captions
  resources :captions
  resources :memes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
