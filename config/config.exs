# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :lisa,
  ecto_repos: [Lisa.Repo]

# Configures the endpoint
config :lisa, LisaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fgZvH9S2aIz/Mfm2nTT3FG+IEUvzEPNjWnlcxgZ37zms3Cx1eq09cp4uE4j1roo9",
  render_errors: [view: LisaWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Lisa.PubSub,
  live_view: [signing_salt: "i+SMAJ8o"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
