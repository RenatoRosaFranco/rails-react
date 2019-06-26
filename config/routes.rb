# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home/index'
  namespace :api do
  	namespace :v1 do
  		resources :fruits, only: [:index, :show, :update, :destroy]
  	end
  end
end
