defmodule BlogGraphqlApiWeb.Mutations.UserMutation do
  alias BlogGraphqlApi.Account

  def register_user(_, %{input: input}, _) do
    Account.create_user(input)
  end
end
