# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :melvin,
  ecto_repos: [Melvin.Repo]

# Configures the endpoint
config :melvin, MelvinWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BpX3GSZPLsnxy/m0gw8J4WK61QAFDRrvTdRBQC3qobYwEi1CYpatYAldEA+gQ37U",
  render_errors: [view: MelvinWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Melvin.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
