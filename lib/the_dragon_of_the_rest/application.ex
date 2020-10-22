defmodule TheDragonOfTheRest.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # children = [
    #   # Starts a worker by calling: TheDragonOfTheRest.Worker.start_link(arg)
    #   # {TheDragonOfTheRest.Worker, arg}
    # ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    # opts = [strategy: :one_for_one, name: TheDragonOfTheRest.Supervisor]
    Supervisor.start_link(children(), opts())
  end

  defp children do
    [
      TheDragonOfTheRest.Endpoint
    ]
  end

  defp opts do
    [
      strategy: :one_for_one,
      name: TheDragonOfTheRest.Supervisor
    ]
  end
end
