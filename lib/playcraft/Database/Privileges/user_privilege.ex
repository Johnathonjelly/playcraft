defmodule Playcraft.Database.Privileges.Privilege do
  use Ecto.Schema
  import Ecto.Changeset

  schema "user_privileges" do
    field(:master, :boolean, default: false)
    field(:trusted, :boolean, default: false)
    field(:engineer, :boolean, default: false)
    field(:designer, :boolean, default: false)
    field(:sales, :boolean, default: false)
    field(:customerService, :boolean, default: false)
    field(:representative, :boolean, default: false)

    belongs_to(:user, Playcraft.Database.Accounts.User)
    timestamps()
  end
end
