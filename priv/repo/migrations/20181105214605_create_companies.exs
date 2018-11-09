defmodule Playcraft.Repo.Migrations.CreateCompanies do
  use Ecto.Migration

  def change do
    create table(:companies) do
      add :CompanyName, :string, null: false
      add :CompanyNameAbbreviation, :string, null: false
      add :CompanyTerritories, :string
      add :CompanyTollFree, :string
      add :CompanyPhone, :string, null: false
      add :CompanyEmail, :string, null: false
      add :CompanyUsername, :string, null: false
      add :password_hash, :string, null: false

      add :credential_id, references(:credentials)
      add :privilege_id, references(:privileges)
      add :CompanyAddress_id, references(:addresses)
      add :CompanyMailAddress_id, references(:addresses)

      timestamps()
    end
  end
end
