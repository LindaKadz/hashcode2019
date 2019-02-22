defmodule HashCode do
  @moduledoc """
  Documentation for HashCode.
  """

  @doc """
  Hello world.

  ## Examples

      iex> HashCode.hello()
      :world

  """
  def hello do
    {:ok, x} = File.read("a_example.mtx")

  x =  String.split(x, "", trim: true)

  y = Enum.map(x,
  fn i ->
    if i == "T" do
     String.replace(i, "", "0")
    else
      String.replace(i, "", "1")
    end
  end)

  z = Enum.map(y, fn i -> String.slice(i, 0..0)end)

  # a = Enum.map(z, fn i -> String.to_integer(i)end)

  b = List.delete_at(z, -1)

  File.write("a_example.csv", b)

  Matrex.load("a_example.csv")
  end
end
