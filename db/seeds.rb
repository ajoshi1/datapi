DataModel.delete_all

10.times do
	DataModel.create(name: Faker::Company.name, description: Faker::Company.bs)
end