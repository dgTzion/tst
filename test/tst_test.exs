defmodule TstTest do
  use ExUnit.Case
  doctest Tst

  test "greets the world" do
    assert Tst.hello() == :world
  end
end
