defmodule Marcy.Mixfile do
  use Mix.Project

  def project do
    [app: :marcy,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  def application do
    [mod: {Marcy, []},
     applications: [:phoenix, :cowboy, :logger, :postgrex, :ecto, :comeonin]]
  end

  defp deps do
    [{:phoenix, "~> 0.8.0"},
     {:cowboy, "~> 1.0"},
     {:postgrex, ">= 0.0.0"},
     {:ecto, github: "elixir-lang/ecto"},
     {:comeonin, "~> 0.2"}]
  end
end
