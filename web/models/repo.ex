defmodule Marcy.Repo do
  use Ecto.Repo, otp_app: :marcy, adapter: Ecto.Adapters.Postgres
end
