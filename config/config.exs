# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :marcy, Marcy.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oifTeiPxuEfyeZAvt/W998TfBF0x/PQTm1ms/t8F9f7f9Xo8UMYyflsXchCuRBnE",
  debug_errors: false

config :marcy, Marcy.Repo,
  url: {:system, "DATABASE_URL"}

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
