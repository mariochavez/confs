defmodule Support.TestHttp do
  def get(url, _) do
    cond do
      String.contains?(url, ["rubyconf2015", "PLSD48HvrE7"]) ->
        {:ok, %{status_code: 200, body: "{}"}}
      true ->
        {:error, %{status_code: 400, body: "{}"}}
    end
  end
end
