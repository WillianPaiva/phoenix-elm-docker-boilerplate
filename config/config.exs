# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :vervalem_com,
  ecto_repos: [VervalemCom.Repo]

# Configures the endpoint
config :vervalem_com, VervalemCom.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ysAb/eDi/7gBW29WsTQqBW2/xjMG1HW06N/OxuA9EO7Qu8q7/b5w24hm2UNSrOUc",
  render_errors: [view: VervalemCom.ErrorView, accepts: ~w(html json)],
  pubsub: [name: VervalemCom.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
