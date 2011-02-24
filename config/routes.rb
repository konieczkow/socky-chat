Socky1::Application.routes.draw do
  get "socky_tests/index"

  resources :messages

  root :to => "messages#new"
end
