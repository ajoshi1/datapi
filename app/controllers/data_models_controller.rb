class DataModelsController < ApplicationController
	def index
		@data_models = DataModel.all
	end
end
