# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mediax,
  ecto_repos: [Mediax.Repo]

# Configures the endpoint
config :mediax, Mediax.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bwr+YUhaUYmHNaYlQ7LqNmdaKMIbkL96JeFusI79goA2rELQ1DdaFZAGrvXGAyEO",
  render_errors: [view: Mediax.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mediax.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
