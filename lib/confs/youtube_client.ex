defmodule Confs.YoutubeClient do
  @user_agent [{"User-agent", "Elixir confs"}]
  @youtube_url "https://www.googleapis.com/youtube/v3/playlistItems"
  @http Application.get_env(:confs, :http)
  @api_key Application.get_env(:confs, :youtube_api_key)

  def fetch(conference) do
    conference
      |> events_url
      |> @http.get(@user_agent)
      |> handle_response
  end

  def events_url(conference) do
    "#{@youtube_url}?key=#{@api_key}&maxResults=50&part=snippet%2Cstatus&playlistId=#{conference}"
  end

  def handle_response({:ok, %{status_code: 200, body: body}}) do
    {:ok, :youtube, body}
  end

  def handle_response({:error, %{status_code: _, body: body}}) do
    {:error, body}
  end
end
