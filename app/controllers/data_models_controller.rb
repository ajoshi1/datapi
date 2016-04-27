class DataModelsController < ApplicationController
	def index
		@data_models = DataModel.all
	end

  def show
    @data_model = DataModel.find(params[:id])
  end
end