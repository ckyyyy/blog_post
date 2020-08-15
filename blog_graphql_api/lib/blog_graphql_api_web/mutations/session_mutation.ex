defmodule BlogGraphqlApiWeb.Mutations.SessionMutation do
  # alias BlogGraphqlApi.Account
  alias BlogGraphqlApi.Account.Session
  alias BlogGraphqlApi.Guardian

  def login_user(_, %{input: input}, _) do
    # check authenticate and generate jwt token
    with {:ok, user} <- Session.authenticate(input),
    {:ok, jwt_token, _} <- Guardian.encode_and_sign(user) do
    {:ok, %{token: jwt_token, user: user}}
    end
  end
end