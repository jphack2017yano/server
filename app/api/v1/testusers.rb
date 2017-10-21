class V1::Testusers < V1::Base

	resource :testusers do
		desc 'Return all test users'
		get do
			Testuser.all
		end

	params do
		requires :id, {type: Integer, desc: 'user id.' }
	end
	get ':id' do
		Testuser.find(params[:id])
	end
end
end
