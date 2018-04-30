Rails.application.routes.draw do
  root 'post#index'
  
  get '/new' => 'post#new' #post controller new action
  post '/create' => 'post#create'
  get '/show/:id' => 'post#show' # id는 뭐가 되도 상관없음, :id => show뒤에 뭐가 들어오든 id라고 하겠다
  get '/destroy/:id' => 'post#destroy'
end
