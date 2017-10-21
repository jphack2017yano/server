class V1::Testusers < V1::Base

	resource :testusers do
		desc 'Return all test users'
		get jbuilder: 'v1/testusers/index' do
			@testusers = Testuser.all
		end

	params do
		requires :id, {type: Integer, desc: 'user id.' }
	end

	resource :id do
		desc 'Describe a user'
		get jbuilder: 'v1/testusers/show' do
		@testuser = Testuser.find(params[:id])
	end
	end

	desc 'Create a user'
	params do
		requires :name, type: String
		requires :description, type: String
	end

	post jbuilder: 'v1/testusers/create' do
		@testuser = Testuser.new(params)
		
		if @testuser.save
			status 201
		else
			status 400
		end
	end
	

end
end
