defmodule T9 do
  @keys %{
    "2" => ~w(a b c),
    "3" => ~w(d e f),
    "4" => ~w(g h i),
    "5" => ~w(j k l),
    "6" => ~w(m n o),
    "7" => ~w(p r q s),
    "8" => ~w(t u v),
    "9" => ~w(w x y z)
  }

  @dict T9.Dict.new

  def to_words(numbers) do
    numbers |> to_letters |> combinations |> Enum.filter(&MapSet.member?(@dict, &1))
  end

  defp to_letters(numbers) do
    numbers |> String.split("", trim: true) |> Enum.map(&Map.get(@keys, &1))
  end

  defp combinations(letters) do
    letters |> T9.Math.cartesian_product |> Enum.map(&Enum.join(&1, ""))
  end
end
