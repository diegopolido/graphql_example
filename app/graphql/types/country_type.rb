Types::CountryType = GraphQL::ObjectType.define do
  name "Country"

  field :id, types.ID
  field :abbreviation, types.String
  field :name, types.String
end
