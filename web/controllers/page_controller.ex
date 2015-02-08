defmodule Marcy.PageController do
  use Phoenix.Controller

  plug :action

  def index(conn, _params) do
    conn
    |> put_layout(false)
    |> render "index.html"
  end
end
