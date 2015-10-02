defmodule Confs.Transform do
  @moduledoc """
  Perform transformation of JSON payloads into Elixir maps.
  """

  @doc """
  Transform json document into an Elixir Map, which is modified 
  and sorted by recording date.
  """
  def execute({:ok, :confreaks, body}) do
    Poison.Parser.parse!(body)
      |> transform_map(:confreaks)
      |> sort_by_field("recorded_at")
  end

  def execute({:ok, :youtube, body}) do
    Poison.Parser.parse!(body)
    |> transform_map(:youtube)
  end

  defp transform_map(list_of_videos, :confreaks) do
    Enum.map list_of_videos, fn(video) ->
      new_fields = %{ 
        "video_url" => "http://#{video["host"]}.com/watch?v=#{video["embed_code"]}",
        "video_source" => "http://confreaks.tv/videos/#{video["slug"]}"
      }
      Dict.merge(video, new_fields)
        |> Dict.drop(["id", "slug", "host", "embed_code", "rating", "post_date", 
                      "announce_date", "views", "views_last_7", "views_last_30", 
                      "attribution"])
    end
  end

  defp transform_map(list_of_videos, :youtube) do
    Map.fetch!(list_of_videos, "items")
      |> Enum.map fn(video) ->
          snippet = Dict.fetch!(video, "snippet")
          video_id = Dict.fetch!(snippet, "resourceId") 
            |> Dict.fetch!("videoId")
          %{ 
            "title" => Dict.fetch!(snippet, "title"),
            "video_source" => "http://youtube.com/watch?v=#{video_id}",
            "recorded_at" => Dict.fetch!(snippet, "publishedAt"),
            "presenters" => [],
            "image" => Dict.fetch!(snippet, "thumbnails") 
              |> Dict.fetch!("maxres")
              |> Dict.fetch!("url"),
            "video_url" => "http://youtube.com/watch?v=#{video_id}",
            "event" => Dict.fetch!(snippet, "channelTitle"),
            "abstract" => Dict.fetch!(snippet, "description"),
            "license" => ""
           }
        end
  end

  defp sort_by_field(list_of_videos, field) do
    Enum.sort list_of_videos, fn v1, v2 ->
      v1[field] <= v2[field]
    end
  end
end
