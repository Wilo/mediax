defmodule Mediax.PageController do
  use Mediax.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
