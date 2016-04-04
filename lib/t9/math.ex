defmodule T9.Math do
  def cartesian_product(list_of_lists) do
    Enum.reduce(list_of_lists, [[]], fn (b, acc) ->
      Enum.flat_map(acc, fn(x) ->
        Enum.map(b, fn(y) -> x ++ [y] end)
      end)
    end)
  end
end
