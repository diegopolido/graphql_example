Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :user, Types::UserType do
    argument :id, types.ID # o "id" tem um tipo especial chamado ID
    description "Identificação do Usuario"

    resolve -> (obj, args, ctx) {
      User.where(id: args[:id]).first
    }
  end

  field :allUsers, types[Types::UserType] do
    description "Retorna todos Usuarios"

    resolve -> (obj, args, ctx) {
      User.all
    }
  end
end
