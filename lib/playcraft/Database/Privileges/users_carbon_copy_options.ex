defmodule Playcraft.Database.Privileges.UsersCarbonCopyOptions do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users_carbon_copy_options" do
    belongs_to(:users, Playcraft.Database.Accounts.User)
    belongs_to(:carbon_copy_options, Playcraft.Database.Privileges.CarbonCopyOptions)
  end
end
