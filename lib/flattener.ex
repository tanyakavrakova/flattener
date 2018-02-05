defmodule Flattener do
  @moduledoc """
  Flattener is a module that provides a function for list flattening.
  This implementation of Flattener is with tail recursion.
  """

  @doc """
  Flattens a list.
  ## Examples

      iex> Flattener.flatten([[[[], [], [[[], []]]],"a"], ["b", "c"], ["d", ["e", "f"]]])
      ["a", "b", "c", "d", "e", "f"]

  """
  def flatten(list), do: flatten(list, [])

  defp flatten([], flattened), do: Enum.reverse(flattened)

  defp flatten([[[] | head_tail] | tail], flattened) do
    flatten(head_tail ++ tail, flattened)
  end

  defp flatten([[head | head_tail] | tail], flattened) do
    flatten([head | head_tail ++ tail], flattened)
  end

  defp flatten([[] | tail], flattened) do
    flatten(tail, flattened)
  end

  defp flatten([head | tail], flattened) do
    flatten(tail, [head | flattened])
  end
end
