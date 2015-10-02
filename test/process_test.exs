defmodule ProcessTest do
  use ExUnit.Case
  import Confs.Process, only: [ execute: 1 ]

  test "return :ok, :confreaks and json payload" do
    assert execute({:confreaks, "rubyconf2015"}) == {:ok, :confreaks, "{}"}
  end

  test "return :ok, :youtube and json payload" do
    assert execute({:youtube, "PLSD48HvrE6"}) =={:ok, :youtube, "{}"}
  end
end
