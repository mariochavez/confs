defmodule CliTest do
  use ExUnit.Case
  import Confs.CLI, only: [ execute: 1, parse_args: 1 ]
  import ServicesJson, only: [ fixture: 1 ]
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

  test "return a map with Confreaks' videos info" do
    assert execute({:confreaks, "rubyconf2014"}) == fixture(:confreaks_videos_list)
  end

  test "return a map with Youtube's videos info" do
    assert execute({:youtube, "PLSD48HvrE7"}) == fixture(:youtube_videos_list)
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
