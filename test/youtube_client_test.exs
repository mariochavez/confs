defmodule YoutubeClientTest do
  use ExUnit.Case
  import Confs.YoutubeClient, only: [fetch: 1, events_url: 1]

  test "build url for PLSD48HvrE7" do
    assert events_url("PLSD48HvrE7") == "https://www.googleapis.com/youtube/v3/playlistItems?key=youtubekey&maxResults=50&part=snippet%2Cstatus&playlistId=PLSD48HvrE7"
  end

  test "fetch existing conference returns :ok, :youtube, and json payload" do
    assert fetch("PLSD48HvrE7") == {:ok, :youtube, "{}"}
  end

  test "fetch unknown conference returns :error and json payload" do
    assert fetch("unknown") == {:error, "{}"}
  end
end
