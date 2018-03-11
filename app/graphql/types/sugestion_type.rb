Types::SugestionType = GraphQL::ObjectType.define do
  name 'Sugestion'

  field :id, !types.ID
  field :title, !types.String
  field :message, !types.String

  field :postedBy, -> { Types::UserType }, property: :user

end
