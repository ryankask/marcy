defmodule Marcy.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def up do
    create table(:users) do
      add :email, :varchar, size: 254, null: false
      add :full_name, :varchar, size: 128
      add :short_name, :varchar, size: 30, null: false
      add :password, :char, size: 60
      add :is_active, :boolean, default: true, null: false
      add :is_admin, :boolean, default: false, null: false
    end

    create index(:users, [:email], unique: true)
  end

  def down do
    drop table(:users)
  end
end
