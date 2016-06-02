
# http://localhost:3000/run/iris.json?sepal_length=10&sepal_width=10&petal_length=10&petal_width=10
# http://localhost:3000/run/boston.json?crim=10&zn=19&indus=100&chas=10&nox=1

class RunnerController < ApplicationController
  def run
    name = params[:name]

    dir = File.join(File.dirname(__FILE__), "../../python_reflection")
    meta_data = JSON.parse(File.read(File.join(dir, "#{name}clf/#{name}clf_metadata.json")))
    path = File.join(dir, "#{name}_script.py")

    param_names = meta_data["feature_names"].map(&:downcase)

    param_values = []
    param_names.each do |s|
      param_values << params.require(s)
    end

    output = %x{cd #{dir}; python #{path} #{param_values.join(' ')}}.strip #/Users/pivotal/anaconda2/bin/

    if meta_data["target_mapping"]
      output = meta_data["target_mapping"][output]
    end

    render json: {
      output: output,
    }
  end
end
