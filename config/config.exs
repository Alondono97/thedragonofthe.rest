import Config

config :the_dragon_of_the_rest, TheDragonOfTheRest.Endpoint, port: 4000

import_config "#{Mix.env}.exs"