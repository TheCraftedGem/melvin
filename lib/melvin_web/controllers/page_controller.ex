defmodule MelvinWeb.PageController do
  use MelvinWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
