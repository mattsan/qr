defmodule Qr.MixProject do
  use Mix.Project

  def project do
    [
      app: :qr,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      escript: escript(),
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  def escript do
    [main_module: Qr.CLI]
  end

  defp deps do
    [
      {:qr_code, "~> 2.3"},
      {:ok, "~> 2.3"}
    ]
  end
end
