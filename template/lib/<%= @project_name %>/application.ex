defmodule <%= @project_name_camel_case %>.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    Supervisor.start_link(
      [
        <%= @project_name_camel_case %>.Repo
      ],
      strategy: :one_for_one,
      name: <%= @project_name_camel_case %>.Supervisor
    )
  end
end
