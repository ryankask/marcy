defmodule Marcy.UserController do
  use Phoenix.Controller

  plug :action

  def auth(conn, %{"email" => email, "password" => password }) do
    json conn, (case Marcy.UserQuery.get_by(:email, email) do
                  {:ok, user} ->
                    if Comeonin.Bcrypt.checkpw(password, user.password) do
                      user |> Dict.drop([:password])
                    else
                      %{}
                    end
                  {:error, _} -> %{}
                end)
  end
end
