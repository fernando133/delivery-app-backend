Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  
  field :allUsers, !types[Types::UserType] do
    resolve -> (obj, args, ctx) { User.all }
  end

  field :allSugestions, !types[Types::SugestionType] do
  	resolve -> (obj, args, ctx) {Sugestion.all}
  end
  
end
