defmodule Confs.CLI do
  @moduledoc """
  Handle the command line parsing and the dispatch to
  the varios functions that end up getting conference
  videos from Confreafs and Youtube
  """
  def run(argv) do
    argv
      |> parse_args
      |> Confs.Process.execute
      |> Confs.Transform.execute
      |> IO.inspect
  end

  def execute({service, conference} = argv) do
    argv
      |> Confs.Process.execute
      |> Confs.Transform.execute
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
end
