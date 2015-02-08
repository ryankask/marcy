defmodule Marcy.Repo do
  use Ecto.Repo, otp_app: :marcy, adapter: Ecto.Adapters.Postgres

  def query(sql, params, opts \\ []) do
    Ecto.Adapters.SQL.query(__MODULE__, sql, params, opts)
  end

  def query_map(sql, params, opts \\ []) do
    result = query(sql, params, opts)
    columns_as_atoms = Enum.map result.columns, &String.to_atom/1
    Enum.map result.rows, fn row ->
      pairs = Stream.zip columns_as_atoms, Tuple.to_list(row)
      Enum.into pairs, %{}
    end
  end

  def get_map([row]) do
    {:ok, row}
  end

  def get_map([]) do
    {:error, :does_not_exist}
  end
end
