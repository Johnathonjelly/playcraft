defmodule Playcraft.Database.Accounts.Credential do
  use Ecto.Schema
  import Ecto.Changeset

  schema "credentials" do
    field(:password, :string, virtual: true)
    field(:password_hash, :string)

    belongs_to(:user, Playcraft.Database.Accounts.User)
    belongs_to(:company, Playcraft.Database.Accounts.Company)

    timestamps()
  end
end
