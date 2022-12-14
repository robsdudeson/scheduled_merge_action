import Config

config :scheduled_merge,
  github: [
    repo: System.get_env("GITHUB_REPOSITORY"),
    api_url: System.get_env("GITHUB_API_URL"),
    api_token: System.get_env("INPUT_REPO-TOKEN")
  ],
  labels: [
    default_error_label: %{
      name: "merge-failed",
      color: "FF0000",
      description: "indicates when scheduled merge does not work"
    },
    default_merge_label: %{
      color: "00FF00"
    }
  ]
