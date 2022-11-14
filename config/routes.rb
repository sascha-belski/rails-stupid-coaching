Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # root to: "questions#home"
  root to: "questions#ask"
  # Defines the root path route ("/")
  # root "articles#index"
  get "ask", to: "questions#ask", as: :ask
  get "answer", to: "answers#answer"
end
