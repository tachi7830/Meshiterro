Rails.application.routes.draw do
  
  #deviseを使用する際にURLとしてusersを含むことを示す
  devise_for :users
  #get 'top' => 'homes#top'
  root to: 'homes#top'
  #ポストイメージコントローラーに使うアクションのみルーティング
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, onry: [:create, :des]
    
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
