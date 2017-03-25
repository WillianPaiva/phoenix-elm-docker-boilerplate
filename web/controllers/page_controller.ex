defmodule VervalemCom.PageController do
  use VervalemCom.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
