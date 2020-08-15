defmodule BlogGraphqlApiWeb.Schema do
  use Absinthe.Schema

  # import Types 
  import_types(BlogPost.Schema.Types)

  query do
  end

  # mutation do
  # end

  # subscription do
  # end

end