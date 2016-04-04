defmodule T9.Dict do
  def  new,  do: File.stream!(path) |> Stream.map(&String.strip/1) |> MapSet.new
  defp path, do: Application.get_env(:t9, :dict)
end
