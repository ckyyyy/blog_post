# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :blog_graphql_api,
  ecto_repos: [BlogGraphqlApi.Repo]

# Configures the endpoint
config :blog_graphql_api, BlogGraphqlApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1pzpQrn0DRQHBs5et/g2dLQmwV2MIT9r7iEzWSTxuYHl2HkNt0GQvwmBabaOxSNU",
  render_errors: [view: BlogGraphqlApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: BlogGraphqlApi.PubSub,
  live_view: [signing_salt: "kGEdobDm"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Guardian config details
config :blog_graphql_api, BlogGraphqlApi.Guardian,
  issuer: "blog_graphql_api",
  secret_key: "8KnPdlqD/wiIQVIz3wj3q1wm/yl/3ZZDlc65YF9qxL/jeW0WhtCndgtg6PgOzsQB"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
