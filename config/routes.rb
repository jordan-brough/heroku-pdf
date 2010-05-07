ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'home'

  map.hello_world 'hello_world.:format', :controller => 'home', :action => 'hello_world'
end
