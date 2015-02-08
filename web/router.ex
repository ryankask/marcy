defmodule Marcy.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ~w(html)
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ~w(json)
  end

  scope "/", Marcy do
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "/api", Marcy do
    pipe_through :api

    post "/users/auth", UserController, :auth
  end
end
