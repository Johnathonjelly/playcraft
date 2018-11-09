defmodule Playcraft.Repo.Migrations.AddressTable do
  use Ecto.Migration

  def change do
    add :city, :string, null: false
    add :state, :string, null: false
    add :country, :string, null: false
    add :zip, :string, null: false
    add :address, :string, null: false
    add :addressTwo, :string
  end
end
