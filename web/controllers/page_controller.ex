defmodule FinanceTrackerApp.PageController do
  use FinanceTrackerApp.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
