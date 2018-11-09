defmodule Playcraft.Database.Accounts.Company do
  use Ecto.Schema
  import Ecto.Changeset

  # Company schema. Many users belong to a parent company.

  schema "companies" do
    field(:CompanyName, :string, null: false)
    field(:CompanyNameAbbreviation, :string, null: false)
    field(:CompanyTerritories, :string)
    field(:CompanyTollFree, :string)
    field(:CompanyPhone, :string, null: false)
    field(:CompanyEmail, :string, null: false)
    field(:CompanyUsername, :string, null: false)

    # mail to is seperate. Address is seperate
    has_many(:addresses, Playcraft.Database.Accounts.Address)
    has_one(:credential, Playcraft.Database.Accounts.Credential)
    has_many(:users, Playcraft.Database.Accounts.User)
    timestamps()
  end
end
