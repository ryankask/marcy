defmodule Marcy.Endpoint do
  use Phoenix.Endpoint, otp_app: :marcy

  plug Plug.Static,
    at: "/", from: :marcy

  plug Plug.Logger

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  plug Phoenix.CodeReloader

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_marcy_key",
    signing_salt: "9jbI2yI2",
    encryption_salt: "3Hq5tyJT"

  plug :router, Marcy.Router
end
