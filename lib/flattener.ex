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
  def hello do
    :world
  end

  def flatten(list) do
    flatten(list, [])
  end

  def flatten([], flattened) do
    Enum.reverse(flattened)
  end

  def flatten([[head | tail]| tail2], flattened) do
    flatten([head | tail ++ tail2], flattened)
  end

  def flatten([head | tail], flattened) do
    flatten(tail, [head | flattened])
  end
end
