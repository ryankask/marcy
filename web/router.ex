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
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/api", Marcy do
    pipe_through :api

    resources "/users", UserController
  end
end
