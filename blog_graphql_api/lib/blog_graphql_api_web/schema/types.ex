defmodule BlogGraphqlApiWeb.Schema.Types do
  use Absinthe.Schema.Notation

  alias BlogGraphqlApiWeb.Schema.Types 

  import_types(Types.UserType)
end