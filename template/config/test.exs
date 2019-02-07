use Mix.Config

# Configure your database
config :<%= @project_name %>, <%= @project_name_camel_case %>.Repo,
  username: "postgres",
  password: "postgres",
  database: "<%= @project_name %>_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
