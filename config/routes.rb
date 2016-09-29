Rails.application.routes.draw do
  
  devise_for :users
	resources "mantenimientos"
	resources "transacciones"
	root "mantenimientos#home"

end
