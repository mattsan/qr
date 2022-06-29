defmodule Qr do
  @moduledoc """
  QR コード
  """

  import OK, only: [~>: 2]

  @white IO.ANSI.light_white_background()
  @black IO.ANSI.black_background()

  @doc """
  入力した文字列の QR コードをテキストで表示する
  """
  def show(string) when is_binary(string) do
    string
    |> QRCode.create()
    ~> show_matrix()
  end

  defp show_matrix(%{matrix: matrix}) do
    len = length(hd(matrix))

    edge = [@white, String.duplicate("  ", len + 2), @black]

    IO.puts(edge)

    matrix
    |> Enum.each(fn row ->
      IO.write([@white, "  ", @black])

      row
      |> Enum.map(fn
        1 -> [@black, "  "]
        0 -> [@white, "  "]
      end)
      |> IO.write()

      IO.puts([@white, "  ", @black])
    end)

    IO.puts(edge)
  end
end
