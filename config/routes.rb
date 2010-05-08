ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'home'

  map.samples 'samples/:action.:format', :controller => 'samples'
end
