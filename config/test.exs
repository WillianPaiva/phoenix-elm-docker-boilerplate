use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :vervalem_com, VervalemCom.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :vervalem_com, VervalemCom.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "vervalem_com",
  password: "aUuj22P7s2evRrw25LDW",
  database: "vervalem_com_test",
  hostname: "postgres",
  pool: Ecto.Adapters.SQL.Sandbox
