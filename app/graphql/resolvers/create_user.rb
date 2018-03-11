class Resolvers::CreateUser < GraphQL::Function
	
	AuthProviderInput = GraphQL::InputObjectType.define do
		name 'AuthProviderSignUpData'
		argument :celphone, Types::AuthProviderCelphoneInput
	end 

	argument :name, !types.String
	argument :address, !types.String
	argument :authProvider, !AuthProviderInput


	type Types::UserType

	def call(_obj, args, _ctx)
		User.create!(
			name: args[:name],
			address: args[:address],
			celphone: args[:authProvider][:celphone][:celphone],
			password: args[:authProvider][:celphone][:password]
		)
	end 
end
