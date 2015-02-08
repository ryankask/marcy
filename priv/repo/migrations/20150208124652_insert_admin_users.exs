defmodule Marcy.Repo.Migrations.InsertAdminUsers do
  use Ecto.Migration

  def up do
    execute """
      INSERT INTO users (email, full_name, short_name, is_admin) VALUES
        ('webmaster@ryankaskel.com', 'Ryan Kaskel', 'Ryan', true)
    """
  end

  def down do
  end
end
