class PlantsController < ApplicationController
    def index
        plants = Plant.all
        render json: plants, status: :ok
    end

    def create
        byebug
        plant = Plant.create( plant_params)
        render json: plant, status: :created

    end

    private

    def plant_params
        params.permit(:name, :image, :price)
        
    end
end
