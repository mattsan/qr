defmodule Qr.CLI do
  def main(argv) do
    argv
    |> show()
  end

  defp show([string]) do
    Qr.show(string)
  end

  defp show([string | rest]) do
    Qr.show(string)
    :io.nl()
    show(rest)
  end

  defp show([]) do
    IO.puts("""

    usage: qr [string...]
    """)
  end
end
