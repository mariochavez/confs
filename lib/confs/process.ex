defmodule Confs.Process do
  @moduledoc """
  Handle Json processing from calling Confreaks and YouTube APIs.
  """

  @doc """
  Returns help message when process receive :help atom.
  """
  def execute(:help) do
    IO.puts """
    usage: confs <service> <conference>
    Valid services are: confreaks, youtube
    """
    System.halt(0)
  end

  @doc """
  Process conference from Confreaks API.
  """
  def execute({:confreaks, conference}) do
    Confs.ConfreaksClient.fetch(conference)
  end

  def execute({:youtube, conference}) do
    Confs.YoutubeClient.fetch(conference)
  end

end
