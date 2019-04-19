defmodule MelvinWeb.UserView do
  use MelvinWeb, :view
  alias Melvin.User

  def first_name(%User{name: name}), do: String.split(name, " ") |> Enum.at(0)
end
