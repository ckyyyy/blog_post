defmodule BlogGraphqlApiWeb.Resolvers.UserResolver do
  alias BlogGraphqlApi.Account

  def users(_, _, %{context: context}) do
    # IO.inspect context
    {:ok, Account.list_users()}
  end
end