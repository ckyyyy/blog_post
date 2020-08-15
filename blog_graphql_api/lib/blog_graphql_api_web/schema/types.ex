defmodule BlogPost.Schema.Types do
  use Absinthe.Schema.Notation

  alias BlogPost.Schema.Types 

  import(Types.UserType)
end