# frozen_string_literal: true

Rails.application.routes.draw do
  
  # Administration
  # @implemented
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	
	# Application
	# @implemented
	root to: 'home#index'

  # API
  # @implemented
  namespace :api do
  	namespace :v1 do
  		resources :fruits, only: [:index, :show, :create, :update, :destroy]
  	end
  end
end
