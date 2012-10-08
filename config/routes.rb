ID::Application.routes.draw do
  
   
  resources :partidas

  match ':controller/:action', :action => /[a-z_]+/i
  
  resources :sessions
  
  root :to => "sistema_id#index"
  
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  
  ###########################################Jogadores#################################################
  get 'jogadores' => "jogadores#index", :as => "jogadores"
  get 'jogador/:id' => "jogadores#mostrar", :as => "jogador"
  get 'novo_jogador' => "jogadores#new", :as => "novo_jogador"
  get 'jogadores/:id/editar_jogador' => "jogadores#editar", :as => "editar_jogador"
  get 'jogador/:id' => "jogadores#mostrar", :as => "mostrar_jogador"
  post 'criar_jogador' => "jogadores#create", :as => "criar_jogador"
  post 'atualizar_jogador' => "jogadores#update", :as => "atualizar_jogador"

  ###########################################Clubes#################################################
  get 'clubes' => "clubes#index", :as => "clubes"
  get 'clube/:id' => "clubes#show", :as => "clube"
  get 'novo_clube' => "clubes#new", :as => "novo_clube"
  get 'clubes/:id/editar_clube' => "clubes#editar", :as => "editar_clube"
  get 'clube/:id' => "clubes#mostrar", :as => "mostrar_clube"
  post 'criar_clube' => "clubes#create", :as => "criar_clube"
  post 'atualizar_clube' => "clubes#update", :as => "atualizar_clube"

  ###########################################Campeonatos#################################################
  get 'campeonatos' => "campeonatos#index", :as => "campeonatos"
  get 'campeonato/:id' => "campeonatos#show", :as => "campeonato"
  get 'novo_campeonato' => "campeonatos#new", :as => "novo_campeonato"
  get 'campeonatos/:id/editar_campeonato' => "campeonatos#editar", :as => "editar_campeonato"
  get 'campeonato/:id' => "campeonatos#mostrar", :as => "mostrar_campeonato"
  post 'criar_campeonato' => "campeonatos#create", :as => "criar_campeonato"
  post 'atualizar_campeonato' => "campeonatos#update", :as => "atualizar_campeonato"

  ###########################################Partidas#################################################
  get 'partidas' => "partidas#index", :as => "partidas"
  get 'partida/:id' => "partidas#show", :as => "partida"
  get 'nova_partida' => "partidas#new", :as => "nova_partida"
  get 'partidas/:id/editar_partida' => "partidas#editar", :as => "editar_partida"
  get 'partida/:id' => "partidas#mostrar", :as => "mostrar_partida"
  post 'criar_partida' => "partidas#create", :as => "criar_partida"
  post 'atualizar_partida' => "partidas#update", :as => "atualizar_partida"

  ###########################################Participacoes#################################################
  get 'participacoes' => "participacoes#index", :as => "participacoes"
  get 'participacao/:id' => "participacoes#show", :as => "participacao"
  get 'participacao/:id' => "participacoes#mostrar", :as => "mostrar_participacao"
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
