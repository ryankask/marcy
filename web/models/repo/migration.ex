defmodule Marcy.Repo.Migration do
  use Ecto.Migration, only: [add, 3, fragment: 1, execute: 1]

  def timestamps do
    now = fragment("now()")
    add :created, :"timestamp with time zone", null: false, default: now
    add :modified, :"timestamp with time zone", null: false, default: now
  end

  def modified_trigger_sql(table) do
    ~s{CREATE TRIGGER update_#{table}_modified
       BEFORE UPDATE ON #{table}
       FOR EACH ROW EXECUTE PROCEDURE update_modified_column()}
  end
end
