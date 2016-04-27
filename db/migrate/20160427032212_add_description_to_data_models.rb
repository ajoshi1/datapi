class AddDescriptionToDataModels < ActiveRecord::Migration
  def change
  	add_column :data_models, :description, :string
  end
end
