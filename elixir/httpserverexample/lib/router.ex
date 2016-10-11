defmodule Httpserverexample.Router do
  use Plug.Router

  plug Plug.Logger
  plug :match
  plug :dispatch

  get "/" do
    conn
    |> send_resp(200, "hello world!")
  end

  get "/:name" do
    conn
    |> send_resp(200, "hello #{name}")
  end

  match _ do
    conn
    |> send_resp(404, "404, sorry!")
  end
end
