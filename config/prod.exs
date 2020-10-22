import Config

config :the_dragon_of_the_rest, TheDragonOfTheRest.Endpoint,
  port: String.to_integer(System.get_env("PORT") || "4000")