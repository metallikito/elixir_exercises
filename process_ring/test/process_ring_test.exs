defmodule ProcessRingTest do
  use ExUnit.Case

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "init processes" do
  	message = {"hola", 5}
  	result = ProcessRing.process_ring(message)
  	Enum.each result, fn({x, y}) -> IO.inspect(elem(y, 0)) end
  end
end
