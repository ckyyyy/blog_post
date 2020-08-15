defmodule BlogGraphqlApiWeb.Resolvers.UserResolver do
  alias BlogGraphqlApi.Account

  def users(_, _, _) do
    {:ok, Account.list_users()}
  end
end