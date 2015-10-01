defmodule ConfreaksClientTest do
  use ExUnit.Case
  import Confs.ConfreaksClient, only: [fetch: 1, events_url: 1]

  test "build url for rubyconf2015" do
    assert events_url("rubyconf2015") == "http://confreaks.tv/api/v1/events/rubyconf2015/videos.json"
  end

  test "fetch existing conference returns :ok, :confreaks, and json payload" do
    assert fetch("rubyconf2015") == {:ok, :confreaks, "{}"}
  end

  test "fetch unknown conference returns :error and json payload" do
    assert fetch("unknown") == {:error, "{}"}
  end
end
