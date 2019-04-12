defmodule FinanceTrackerApp.HelloController do
  use FinanceTrackerApp.Web, :controller
  def message(conn, %{"data" => data}) do
    render conn, "hello.html", data: data
  end
end