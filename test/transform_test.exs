defmodule TransformTest do
  use ExUnit.Case
  import Confs.Transform, only: [ execute: 1 ]
  import ServicesJson, only: [ fixture: 1 ]

  test "transform confreaks json into confs map" do
    assert execute({:ok, :confreaks, fixture(:confreaks_events_json)}) == fixture(:confreaks_videos_list)
  end

  test "transform youtube json into confs map" do
    assert execute({:ok, :youtube, fixture(:youtube_events_json)}) == fixture(:youtube_videos_list)
  end
end
