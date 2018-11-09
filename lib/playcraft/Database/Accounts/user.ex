defmodule Playcraft.Database.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field(:firstName, :string, null: false)
    field(:lastName, :string, null: false)
    field(:phone, :string)
    field(:email, :string, null: false)

    has_one(:credentials, Playcraft.Database.Accounts.Credential)
    has_one(:privileges, Playcraft.Database.Privileges.Privilege)

    many_to_many(:user_carbon_copy_options, Playcraft.Database.Privileges.CarbonCopyOptions,
      join_through: Playcraft.Database.Privileges.UsersCarbonCopyOptions
    )

    belongs_to(:companies, Playcraft.Database.Accounts.Company)
    timestamps()
  end
end
