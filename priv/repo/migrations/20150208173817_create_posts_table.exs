defmodule Marcy.Repo.Migrations.CreatePostsTable do
  use Ecto.Migration

  def up do
    create table(:posts) do
      add :user_id, references(:users), null: false
      add :status, :varchar, size: 28, null: false, default: "draft"
      add :title, :varchar, size: 255, null: false
      add :slug, :varchar, size: 100, null: false, unique: true
      add :body, :text
      add :tags, :"text[]"
      Marcy.Repo.Migration.timestamps
    end

    execute Marcy.Repo.Migration.modified_trigger_sql(:posts)
  end

  def down do
    drop table(:posts)
  end
end
