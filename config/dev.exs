use Mix.Config

config :confs,
  http: HTTPoison,
  youtube_api_key: System.get_env("YOUTUBE_API_KEY")
