defmodule CliTest do
  use ExUnit.Case
  import Confs.CLI, only: [ parse_args: 1, process: 1, transform: 1 ]
  import ConfreaksJson, only: [ fixture: 1 ]
  #import ExUnit.CaptureIO

  test ":help returned by option parsing with -h and --help options" do
    assert parse_args([ "-h", "anything" ]) == :help
    assert parse_args([ "--help", "anything" ]) == :help
  end

  test "return two values when service is 'confreaks'" do
    assert parse_args([ "confreaks", "railsconf2015" ]) == { :confreaks, "railsconf2015" }
  end

  test "return two values when service is 'youtube'" do
    assert parse_args([ "youtube", "reactjs2015" ]) == { :youtube, "reactjs2015" }
  end

  test "return :help when service is not confreaks or youtube" do
    assert parse_args([ "vimeo", "reactjs2015" ]) == :help
  end

  test "return :help when one value is received" do
    assert parse_args([ "confreaks" ]) == :help
  end

  test "return :ok, :confreaks and json payload" do
    assert process({:confreaks, "rubyconf2015"}) == {:ok, :confreaks, "{}"}
  end

  test "transform confreaks json into confs map" do
    assert transform({:ok, :confreaks, fixture(:events_json)}) == fixture(:videos_list)
  end

  test "return :ok, :youtube and json payload" do
    assert process({:youtube, "PLSD48HvrE7-bo9rWaCLjxAocrxREREHnt"}) =={:ok, :youtube, "{}"}
  end

  #test "help message" do
  #  result = capture_io fn ->
  #    process(:help) 
  #  end
  #  assert result == """
  #  usage: confs <service> <conference>
  #  Valid services are: confreaks, youtube\n
  #  """
  #end
end
