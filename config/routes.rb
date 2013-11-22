Silence::Application.routes.draw do
 get '/' => 'lamps#new'

 resources :lamps
end

#== Route Map
# Generated on 22 Nov 2013 09:16
#
#     lamps GET    /lamps(.:format)          lamps#index
#           POST   /lamps(.:format)          lamps#create
#  new_lamp GET    /lamps/new(.:format)      lamps#new
# edit_lamp GET    /lamps/:id/edit(.:format) lamps#edit
#      lamp GET    /lamps/:id(.:format)      lamps#show
#           PUT    /lamps/:id(.:format)      lamps#update
#           DELETE /lamps/:id(.:format)      lamps#destroy

#=========================================================
