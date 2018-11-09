defmodule Playcraft.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :firstName, :string, null: false
      add :lastName, :string, null: false
      add :phone, :string, null: false
      add :email, :string, null: false

      add :company_id, references(:companies)
      add :privilege_id, references(:privileges)
      add :credential_id, references(:credentials)
      timestamps()
    end
  end
end
