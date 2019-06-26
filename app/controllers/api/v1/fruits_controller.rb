# frozen_string_literal: true

module API
	module V1
		class FruitsController < ApplicationController 
			before_action :set_fruit, only: [:show, :update, :destroy]

			def index
				fruits = Fruit.all
				render json: { fruits: fruits }, status: 200
			end

			def show
				render json: fruit, status: 200
			end

			def create
				fruit = Fruit.create(fruit_params)
				render json: fruit, status: 201
			end

			def update
				fruit.update(fruit_params)
				render json: fruit, status: 201
			end

			def destroy
				fruit.destroy
				head :no_content
			end

			private

			def set_fruit
				fruit = Fruit.find(params[:id])
			end

			def fruit_params
				params.require(:fruit).permit()
			end
		end
	end
end