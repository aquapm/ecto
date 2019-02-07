use Mix.Config

config :<%= @project_name %>,
  ecto_repos: [<%= @project_name_camel_case %>.Repo]
<%= if @test do %>
import_config "#{Mix.env()}.exs"<% else %>
import_config "prod.secret.exs"<% end %>
