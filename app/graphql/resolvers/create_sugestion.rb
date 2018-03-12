class Resolvers::CreateSugestion < GraphQL::Function

	argument :title, !types.String
	argument :message, !types.String

	type Types::SugestionType

	def call(_obj, args, ctx)
		Sugestion.create!(
			title: args[:title],
			message: args[:message],
			user: ctx[:current_user]
		)
	end 
end
