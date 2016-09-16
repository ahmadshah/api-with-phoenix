# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :api_with_phoenix, ApiWithPhoenix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yjyXk1amH9lBld24IfYRkDLTZNcy/6Ihi37MdOHPT3Z1Yk78gpDnjlfvnTaVtJmR",
  render_errors: [view: ApiWithPhoenix.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ApiWithPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
