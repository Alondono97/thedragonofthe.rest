defmodule TheDragonOfTheRestTest do
  use ExUnit.Case
  doctest TheDragonOfTheRest

  test "greets the world" do
    assert TheDragonOfTheRest.hello() == :world
  end
end
