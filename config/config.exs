# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :stocks_ex,
  ecto_repos: [StocksEx.Repo]

# Configures the endpoint
config :stocks_ex, StocksEx.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "sDvdrxJxD0illxLHplVSH2KLSADLkIYbIChFv45CycavrBcVEoLyF8wpwHzQS95+",
  render_errors: [view: StocksEx.Web.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: StocksEx.PubSub,
  live_view: [signing_salt: "vgnIatOU"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Wallaby
config :wallaby, :chromedriver, path: "/media/alexandrubagu/devel/personal/utils/chromedriver"
config :wallaby, driver: Wallaby.Chrome

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
