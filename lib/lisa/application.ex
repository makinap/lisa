defmodule Lisa.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Lisa.Repo,
      # Start the Telemetry supervisor
      LisaWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Lisa.PubSub},
      # Start the Endpoint (http/https)
      LisaWeb.Endpoint
      # Start a worker by calling: Lisa.Worker.start_link(arg)
      # {Lisa.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Lisa.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    LisaWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
