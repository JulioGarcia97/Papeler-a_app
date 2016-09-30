Rails.application.routes.draw do

  get 'search/create'

  devise_for :users
	resources "mantenimientos"
	resources "transacciones"
	root to: "mantenimientos#home"

end
