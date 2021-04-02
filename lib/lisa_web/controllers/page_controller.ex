defmodule LisaWeb.PageController do
  use LisaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
