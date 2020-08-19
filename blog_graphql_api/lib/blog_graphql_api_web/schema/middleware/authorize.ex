defmodule MediumGraphqlApiWeb.Schema.Middleware.Authorize do
  @behaviour Absinthe.Middleware

  def call(resolution, role) do
    with %{current_user: current_user} <- resolution.context,
         true <- match_role?(current_user, role) do
      resolution
    else
      _ ->
        resolution
        |> Absinthe.Resolution.put_result({:error, "unauthorized"})
    end
  end

  defp match_role?(%{}, :any), do: true
  defp match_role?(%{role: role}, role), do: true
  defp match_role?(_, _), do: false
end
