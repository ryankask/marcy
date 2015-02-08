defmodule Marcy.Repo.Migrations.CreateModifiedFunc do
  use Ecto.Migration

  def up do
    ~s{CREATE OR REPLACE FUNCTION update_modified_column()
       RETURNS TRIGGER AS $$
       BEGIN
         NEW.modified = now();
         RETURN NEW;
       END;
       $$ language 'plpgsql'}
    |> execute
  end

  def down do
    execute "DROP FUNCTION IF EXISTS update_modified_column()"
  end
end
