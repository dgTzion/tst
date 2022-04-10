defmodule Tst do
  @spec build(
          binary
          | maybe_improper_list(
              binary | maybe_improper_list(any, binary | []) | char,
              binary | []
            )
        ) :: any
  def build(hello) do
    hello |> File.read() |> read
  end

  def read({:ok, content}) do
    content
    |> String.split(",")
    |> Enum.map(&evo/1)
  end

  def read({:error, reason}), do: "Erro : #{reason}"

  def evo(elem) do
    String.to_integer(elem)
  end

  @spec another(any, any) :: :ok
  def another(p1, p2) do
    x = "shalom #{p1} #{p2}" |> String.upcase()
    IO.puts(x)
  end
end
