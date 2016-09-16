defmodule ApiWithPhoenix.PageController do
  use ApiWithPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
