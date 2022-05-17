Rails.application.routes.draw do
  get 'hello_vue/index'
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
end
