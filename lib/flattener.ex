defmodule Flattener do
  @moduledoc """
  Documentation for Flattener.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Flattener.hello
      :world

  """
  def flatten(list) do
    flatten(list, [])
  end

  defp flatten([], flattened) do
    Enum.reverse(flattened)
  end

  defp flatten([[[]|tail]| tail2], flattened) do
    flatten(tail ++ tail2, flattened)
  end

  defp flatten([[head | tail]| tail2], flattened) do
    flatten([head | tail ++ tail2], flattened)
  end

  defp flatten([[] | tail], flattened) do
    flatten(tail, flattened)
  end

  defp flatten([head | tail], flattened) do
    flatten(tail, [head | flattened])
  end
end
