# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :finance_tracker_app,
  ecto_repos: [FinanceTrackerApp.Repo]

# Configures the endpoint
config :finance_tracker_app, FinanceTrackerApp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "AyxIUNoW5e4fYkG6Z5rmKF1DElbXBe11EBhCZs4w+Z2NVRh0J5NmgxAxtBBVNEDx",
  render_errors: [view: FinanceTrackerApp.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FinanceTrackerApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
