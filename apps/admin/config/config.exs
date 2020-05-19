# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :admin, AdminWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/57z9FJ1urZ61yPgDou4nPOZRtV7Rttu3/rWXlWUFHZT8q8CtC7JiSp4h23mkfnj",
  render_errors: [view: AdminWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Admin.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :admin, :pow,
  user: Database.Admins.Admin,
  repo: Database.Repo,
  web_module: AdminWeb

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
