defmodule PlaycraftWeb.PageController do
  use PlaycraftWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
