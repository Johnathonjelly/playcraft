defmodule Playcraft.Database.Privileges.CarbonCopyOptions do
  use Ecto.Schema
  import Ecto.Changeset

  schema "carbon_copy_options" do
    field(:proposal_cc, :boolean, default: false)
    field(:poster_cc, :boolean, default: false)
    field(:problem_cc, :boolean, default: false)
    field(:all_cc, :boolean, default: false)

    many_to_many(:user_carbon_copy_options, Playcraft.Database.Accounts.User,
      join_through: Playcraft.Database.Privileges.UsersCarbonCopyOptions
    )
  end
end
