defmodule T9Test do
  use ExUnit.Case
  doctest T9

  test "to_words" do
    assert T9.to_words("43556") == ["hello"]
  end
end
