defmodule BlogGraphqlApiWeb.Schema do
  use Absinthe.Schema

  alias BlogGraphqlApiWeb.Resolvers
  alias BlogGraphqlApiWeb.Mutations

  # import Types 
  import_types(BlogGraphqlApiWeb.Schema.Types)

  query do
    @desc "Get a list of all users"
    field :users, list_of(:user_type) do
      resolve(&Resolvers.UserResolver.users/3)
    end
  end

  mutation do
    @desc "Register a new user"
    field :register_user, type: :user_type do
      arg(:input, non_null(:user_input_type))
      resolve(&Mutations.UserMutation.register_user/3)
    end
  end

  # subscription do
  # end

end