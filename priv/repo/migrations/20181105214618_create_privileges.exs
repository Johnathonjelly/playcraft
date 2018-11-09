defmodule Playcraft.Repo.Migrations.CreatePrivileges do
  use Ecto.Migration

  def change do
    create table(:privileges) do
      add :user_id, references(:users)
      add :Master, :boolean, default: false
      add :Trusted, :boolean, default: false
      add :Engineer, :boolean, default: false
      add :Designer, :boolean, default: false
      add :Sales, :boolean, default: false
      add :CustomerService, :boolean, default: false
      add :Representive, :boolean, default: false

      timestamps()
    end

    create unique_index(:privileges, [:user_id])
  end
end
