class Resolvers::CreateUser < GraphQL::Function

	argument :name, !types.String
	argument :address, !types.String
	argument :celphone, !types.String

	type Types::UserType

	def call(_obj, args, _ctx)
		User.create!(
			name: args[:name],
			address: args[:address],
			celphone: args[:celphone]
		)
	end 
end
