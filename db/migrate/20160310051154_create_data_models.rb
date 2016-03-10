class CreateDataModels < ActiveRecord::Migration
  def change
    create_table :data_models do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
