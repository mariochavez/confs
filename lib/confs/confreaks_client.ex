defmodule Confs.ConfreaksClient do
  @user_agent [{"User-agent", "Elixir confs"}]
  @confreaks_url "http://confreaks.tv/api/v1"
  @http Application.get_env(:confs, :http)

  def fetch(conference) do
    conference
      |> events_url
      |> @http.get(@user_agent)
      |> handle_response
  end

  def events_url(conference) do
    "#{@confreaks_url}/events/#{conference}/videos.json"
  end

  def handle_response({:ok, %{status_code: 200, body: body}}) do
    if body == "{\"status\":404}" do
      handle_response({:error, %{status_code: 404, body: body}})
    else
      {:ok, :confreaks, body}
    end
  end

  def handle_response({:error, %{status_code: _, body: body}}) do
    {:error, body}
  end
end
