defmodule Confs.CLI do
  @moduledoc """
  Handle the command line parsing and the dispatch to
  the varios functions that end up getting conference
  videos from Confreafs and Youtube
  """
  def run(argv) do
    argv
      |> parse_args
      |> process
      |> transform
  end

  @doc """
  `argv` can be -h or --help, which will returns :help.
  Otherwise it is a service and conference
  the number of entries to format.
  Return a tuple of `{ service, conference }`, or 
  `:help` if help was given.
  """
  def parse_args(argv) do
    parse = OptionParser.parse(argv, switches: [ help: :boolean ], 
    aliases: [ h: :help])
    case parse do
      { [ help: true], _, _ } -> :help
      { _, [ "confreaks", conference ], _ } ->
        { :confreaks, conference }
      { _, [ "youtube", conference ], _ } ->
        { :youtube, conference }
      _ -> :help
    end
  end

  @doc """
  Returns help message when process receive :help atom.
  """
  def process(:help) do
    IO.puts """
    usage: confs <service> <conference>
    Valid services are: confreaks, youtube
    """
    System.halt(0)
  end

  @doc """
  Process conference from Confreaks API.
  """
  def process({:confreaks, conference}) do
    Confs.ConfreaksClient.fetch(conference)
  end

  def process({:youtube, conference}) do
    Confs.YoutubeClient.fetch(conference)
  end

  @doc """
  Transform json document into an Elixir Map, which is modified 
  and sorted by recording date.
  """
  def transform({:ok, :confreaks, body}) do
    Poison.Parser.parse!(body)
      |> transform_map(:confreaks)
      |> sort_by_field("recorded_at")
  end

  defp transform_map(list_of_videos, :confreaks) do
    Enum.map list_of_videos, fn(video) ->
      new_fields = %{ 
        "video_url" => "http://#{video["host"]}.com/watch?v=#{video["embed_code"]}",
        "video_source" => "http://confreaks.tv/videos/#{video["slug"]}"
      }
      Dict.merge(video, new_fields)
        |> Dict.drop(["id", "slug", "host", "embed_code", "rating", "post_date", "announce_date", "views", "views_last_7", "views_last_30", "attribution"])
    end
  end

  defp sort_by_field(list_of_videos, field) do
    Enum.sort list_of_videos, fn v1, v2 ->
      v1[field] <= v2[field]
    end
  end
end
