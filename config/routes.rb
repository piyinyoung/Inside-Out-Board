Rails.application.routes.draw do
  root :to => "powerup#read"
  
  get ':controller(/:action(/:id))'
  post ':controller(/:action(/:id))'
end
