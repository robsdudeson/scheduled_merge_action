defmodule ScheduledMergeAction.MixProject do
  use Mix.Project

  def project do
    [
      app: :scheduled_merge_action,
      version: "0.0.1",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:scheduled_merge, git: "https://github.com/robsdudeson/scheduled_merge.git", branch: "main"}
    ]
  end
end
