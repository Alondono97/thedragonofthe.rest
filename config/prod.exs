import Config

config :the_dragon_of_the_rest, TheDragonOfTheRest.Endpoint,
  port: String.to_integer(System.get_env("PORT") || "4000")
  url: [scheme: "http", host: "the-dragon-of-the-rest.herokuapp.com", port: :port]