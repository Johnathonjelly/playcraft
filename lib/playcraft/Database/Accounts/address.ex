defmodule Playcraft.Database.Accounts.Address do
  use Ecto.Schema
  import Ecto.Changeset

  schema "addresses" do
    field(:city, :string, null: false)
    field(:state, :string, null: false)
    field(:country, :string, null: false)
    field(:zip, :string, null: false)
    field(:address, :string, null: false)
    field(:addressTwo, :string)

    belongs_to(:companies, Playcraft.Database.Accounts.Company)
  end
end
