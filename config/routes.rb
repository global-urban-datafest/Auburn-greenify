RailsStarter::Application.routes.draw do
  root to: 'say#hello'
  post ':type_id/:lat/:lon', to: 'search#add', constraints:{:lat => /\-*\d+.\d+/ , :lon => /\-*\d+.\d+/}
  get ':type_id/:lat/:lon', to: 'search#get', constraints: {:lat => /\-*\d+.\d+/ , :lon => /\-*\d+.\d+/}
end
