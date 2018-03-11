Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  	field :createUser, function: Resolvers::CreateUser.new
  	field :createSugestion, function: Resolvers::CreateSugestion.new
  	
  end
