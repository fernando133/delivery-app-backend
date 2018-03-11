Types::AuthProviderCelphoneInput = GraphQL::InputObjectType.define do
	name 'AUTH_PROVIDER_CELPHONE'

	argument :celphone, !types.String
	argument :password, !types.String

end