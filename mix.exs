defmodule PlayListParser.Mixfile do
  use Mix.Project

  def project do
    [app: :music_unlimited_playlist_parser,
     version: "0.1.1",
     elixir: "~> 1.0",
     escript: escript,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:jazz, "~> 0.2.1"}
    ]
  end

  def escript do
    [main_module: PlayListParser]
  end
end
