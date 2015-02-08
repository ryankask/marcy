defmodule Marcy.UserQuery do
  def get_by(column, value) when is_atom(column) do
    ~s{SELECT * FROM users WHERE "#{column}" = $1}
    |> Marcy.Repo.query_map([value])
    |> Marcy.Repo.get_map
  end
end
