RailsStarter::Application.routes.draw do
  #get ':controller(/:action(/:id))'
  root to: 'say#hello'
  
  get 'hydration/:lat/:lon', to: 'hydration#get'
  get 'wifi/:lat/:lon', to: 'wifi#get'
  get 'chargers/:lat/:lon', to: 'chargers#get'
  get 'recycling/:lat/:lon', to: 'recycling#get'
  get 'bikerental/:lat/:lon', to: 'bikerental#get'
  
  post 'hydration/:lat/:lon', to: 'hydration#add'
  post 'wifi/:lat/:lon', to: 'wifi#add'
  post 'chargers/:lat/:lon', to: 'chargers#add'
  post 'recycling/:lat/:lon', to: 'recycling#add'
  post 'bikerental/:lat/:lon', to: 'bikerental#add'
end
