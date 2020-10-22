defmodule TheDragonOfTheRest.Router do 
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  # Request will only match if it's a GET method  and the route is /
  get "/" do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Poison.encode!(message()))
  end

  defp message do

    %{
      quote: get_quote()
    }
  end

  defp get_quote do
    List.first(get_quotes())
  end 

  defp get_quotes() do
    File.read("lib/the_dragon_of_the_rest/quotes.txt")
      |> elem(1)
      |> String.split("\n", trim: true)
      |> Enum.shuffle
  end
  
end