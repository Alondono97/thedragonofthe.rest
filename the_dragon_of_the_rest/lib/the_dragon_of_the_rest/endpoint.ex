defmodule TheDragonOfTheRest.Endpoint do
  use Plug.Router # dispatches incoming requests based on the path and method

  plug(:match)

  # Plug.Parsers handles application/json requests with Poison
  plug(Plug.Parsers,
    parsers: [:json],
    pass: ["application/json"],
    json_decoder: Poison
  )

  plug(:dispatch)

  # forward "/quote" request to TheDragonOfTheRest.Router which will see it as a request to "/"
  forward("/quote", to: TheDragonOfTheRest.Router) 


  match _ do
    # Represents the :match plug invoked by the router
    # Responsible for finding a matching route then forwarding it to :dispatch plug to execute

    # Catch-all route which matches all requests 
    send_resp(conn, 404, "Requested page not found!")

  end

  def child_spec(opts) do   
    %{
      id: __MODULE__,
      start: {__MODULE__, :start_link, [opts]}
    }
  end

  def start_link(_opts),
    do: Plug.Adapters.Cowboy2.http(__MODULE__, [])
end